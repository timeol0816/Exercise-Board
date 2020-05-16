package org.spring.project.board.web;

import java.util.List;
import java.util.Locale;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.spring.project.board.service.BoardService;
import org.spring.project.board.service.ReplyService;
import org.spring.project.board.service.impl.BoardVO;
import org.spring.project.board.service.impl.PageMaker;
import org.spring.project.board.service.impl.ReplyVO;
import org.spring.project.board.service.impl.SearchCriteria;
import org.spring.project.member.service.impl.MemberVO;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

/**
 * Handles requests for the application home page.
 */
@Controller
public class BoardController {
	@Autowired
	private BoardService boardService;

	@Autowired
	private ReplyService replyService;
	private static final Logger logger = LoggerFactory.getLogger(BoardController.class);

	/**
	 * Simply selects the home view to render by returning its name.
	 */
	@RequestMapping(value = "/main", method = RequestMethod.GET)
	public String home(Model model, @ModelAttribute("scri") SearchCriteria scri) throws Exception {
		model.addAttribute("list", boardService.selectAll(scri));

		PageMaker pageMaker = new PageMaker();
		pageMaker.setCri(scri);
		pageMaker.setTotalCount(boardService.listCount(scri));

		model.addAttribute("pageMaker", pageMaker);
		return "board/main";
	}

	@RequestMapping(value = "/writeView", method = RequestMethod.GET)
	public String writeView(HttpServletRequest request) throws Exception {
		System.out.println("session check : "+ request.getSession().getAttribute("member"));
		
		return "board/writeView";
	}

	@RequestMapping(value = "/write", method = RequestMethod.POST)
	public String write(BoardVO boardVO) throws Exception {

		boardService.insert(boardVO);
		return "redirect:/main";
	}

	@RequestMapping(value = "/readView", method = RequestMethod.GET)
	public String readView(Model model, BoardVO boardVO, MemberVO memberVO, ReplyVO replyVO, HttpSession session)
			throws Exception {
		
		BoardVO obj = boardService.select(boardVO.getBno());

		model.addAttribute("read", obj);

		List<ReplyVO> replyList = replyService.readReply(obj.getBno());

		model.addAttribute("replyList", replyList);

		MemberVO member = (MemberVO) session.getAttribute("member");
		
		if (member != null) {
			String sessionId = member.getUserId();
			String boardui = obj.getWriter();
			if (sessionId.equals(boardui)) {
				model.addAttribute("msg", "Y");
			}
		} else {
			model.addAttribute("msg", "N");
		}

		return "board/readView";
	}

	@RequestMapping(value = "/updateView", method = RequestMethod.GET)
	public String updateView(Model model, BoardVO boardVO, int bno) throws Exception {

		model.addAttribute("update", boardService.select(bno));
		return "board/updateView";
	}

	@RequestMapping(value = "/update", method = RequestMethod.POST)
	public String update(Model model, BoardVO boardVO) throws Exception {

		boardService.update(boardVO);
		return "redirect:/main";
	}

	@RequestMapping(value = "/delete", method = RequestMethod.POST)
	public String delete(BoardVO boardVO) throws Exception {
		boardService.delete(boardVO);
		return "redirect:/main";
	}

	@RequestMapping(value = "/replyWrite", method = RequestMethod.POST)
	public String replyWrite(ReplyVO replyVO, RedirectAttributes rttr) throws Exception {

		replyService.writeReply(replyVO);

		rttr.addAttribute("bno", replyVO.getBno());

		return "redirect:/readView";
	}

	// 댓글 수정 GET
	@RequestMapping(value = "/replyUpdateView", method = RequestMethod.GET)
	public String replyUpdateView(ReplyVO replyVO, Model model) throws Exception {

		model.addAttribute("replyUpdate", replyService.selectReply(replyVO.getRno()));

		return "board/replyUpdateView";
	}

	// 댓글 수정 POST
	@RequestMapping(value = "/replyUpdate", method = RequestMethod.POST)
	public String replyUpdate(ReplyVO replyVO, RedirectAttributes rttr) throws Exception {

		replyService.updateReply(replyVO);

		rttr.addAttribute("bno", replyVO.getBno());

		return "redirect:/board/readView";
	}

	// 댓글 삭제 GET
	@RequestMapping(value = "/replyDeleteView", method = RequestMethod.GET)
	public String replyDeleteView(ReplyVO replyVO, Model model) throws Exception {

		model.addAttribute("replyDelete", replyService.selectReply(replyVO.getRno()));

		return "board/replyDeleteView";
	}

	// 댓글 삭제
	@RequestMapping(value = "/replyDelete", method = RequestMethod.POST)
	public String replyDelete(ReplyVO replyVO, RedirectAttributes rttr) throws Exception {

		replyService.deleteReply(replyVO);

		rttr.addAttribute("bno", replyVO.getBno());

		return "redirect:/board/readView";
	}
}