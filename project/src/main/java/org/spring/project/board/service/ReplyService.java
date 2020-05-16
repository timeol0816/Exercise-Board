package org.spring.project.board.service;

import java.util.List;

import org.spring.project.board.service.impl.ReplyVO;

public interface ReplyService {

	public List<ReplyVO> readReply(int bno)throws Exception;
	public void writeReply(ReplyVO replyVO)throws Exception;
	public void updateReply(ReplyVO replyVO)throws Exception;
	public void deleteReply(ReplyVO replyVO)throws Exception;
	public ReplyVO selectReply(int rno)throws Exception;
}
