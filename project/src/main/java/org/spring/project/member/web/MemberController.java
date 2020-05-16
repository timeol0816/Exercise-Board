package org.spring.project.member.web;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.spring.project.member.service.MemberService;
import org.spring.project.member.service.impl.MemberVO;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

@Controller
public class MemberController {

	@Autowired
	private MemberService memberService;
	
	@RequestMapping(value = "/register", method = RequestMethod.GET)
	public String getRegister() throws Exception {
	
		return "member/register";
	}
	
	// 회원가입 post
	@RequestMapping(value = "/register", method = RequestMethod.POST)
	public String postRegister(MemberVO memberVO) throws Exception {
		int result = memberService.idChk(memberVO);
		try {
			if(result==1) {
				return "/register";
			}else if(result==0) {
			memberService.register(memberVO);
			}
		} catch (Exception e) {
			throw new RuntimeException(); 
		}
				
		return "redirect:/main";
	}
	@RequestMapping(value = "/loginView", method = RequestMethod.GET)
	public String loginView() throws Exception{
		return "member/loginView";
	}
	@RequestMapping(value = "/login", method = RequestMethod.POST)
	public String login(MemberVO memberVO, HttpServletRequest req, RedirectAttributes rttr) throws Exception{
		
		
		HttpSession session = req.getSession();
		System.out.println();
		MemberVO login = memberService.login(memberVO);
		
		if(login != null) {
			session.setAttribute("member", login);
			
		}else
		{
			session.setAttribute("member", null);
			rttr.addFlashAttribute("msg", false);
		}
		
		return "redirect:/main";
	}
	
	@RequestMapping(value = "/logout", method = RequestMethod.GET)
	public String logout(HttpSession session) throws Exception{
		
		session.invalidate();
		
		return "redirect:/main";
	}
	
	@RequestMapping(value="/memberUpdateView", method=RequestMethod.GET)
	public String memberUpdateView()throws Exception{
		return "/member/memberUpdateView";
	}
	@RequestMapping(value="/memberUpdate", method = RequestMethod.POST)
	public String Update(MemberVO memberVO, HttpSession session) throws Exception{
		
		memberService.memberUpdate(memberVO);
		
		session.invalidate();
		
		return "redirect:/main";
	}
	
	@RequestMapping(value="/memberDeleteView", method = RequestMethod.GET)
	public String memberDeleteView() throws Exception{
		return "member/memberDeleteView";
	}
	@RequestMapping(value="/memberDelete", method = RequestMethod.POST)
	public String memberDelete(MemberVO memberVO, HttpSession session, RedirectAttributes rttr) throws Exception{
		
		
		MemberVO member = (MemberVO) session.getAttribute("member");
		
		String sessionPass = member.getUserPass();
		
		String voPass = memberVO.getUserPass();
		
		if(!(sessionPass.equals(voPass))) {
			rttr.addFlashAttribute("msg", false);
			return "redirect:/memberDeleteView";
		}
		memberService.memberDelete(memberVO);
		session.invalidate();
		return "redirect:/main";
	}
	@ResponseBody
	@RequestMapping(value="/passChk", method = RequestMethod.POST)
	public int passChk(MemberVO memberVO) throws Exception{
		int result = memberService.passChk(memberVO);
		return result;
	}
	
	@ResponseBody
	@RequestMapping(value="/idChk", method=RequestMethod.POST)
	public int idChk(MemberVO memberVO)throws Exception{
	int result = memberService.idChk(memberVO);
	return result;
	}
}