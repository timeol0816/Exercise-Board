package org.spring.project.board.service.impl;

import java.util.List;

import org.spring.project.board.service.ReplyDAO;
import org.spring.project.board.service.ReplyService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class ReplyServiceImpl implements ReplyService{

	@Autowired
	private ReplyDAO replyDAO;
	
	@Override
	public List<ReplyVO> readReply(int bno) throws Exception {
		
		return replyDAO.readReply(bno);
	}

	@Override
	public void writeReply(ReplyVO replyVO) throws Exception {
		replyDAO.writeReply(replyVO);
		
	}

	@Override
	public void updateReply(ReplyVO replyVO) throws Exception {
		replyDAO.updateReply(replyVO);
		
	}

	@Override
	public void deleteReply(ReplyVO replyVO) throws Exception {
		replyDAO.deleteReply(replyVO);
		
	}

	
	

	@Override
	public ReplyVO selectReply(int rno) throws Exception {
		// TODO Auto-generated method stub
		return selectReply(rno);
	}

}
