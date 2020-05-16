package org.spring.project.board.service.impl;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.spring.project.board.service.ReplyDAO;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

@Repository
public class ReplyDAOImpl implements ReplyDAO{

	@Autowired
	private SqlSessionTemplate sql;
	@Override
	public List<ReplyVO> readReply(int bno) throws Exception {
		// TODO Auto-generated method stub
		return sql.selectList("Reply.readReply", bno);
	}
	@Override
	public void writeReply(ReplyVO replyVO) throws Exception {
		sql.insert("Reply.writeReply",replyVO);
		
	}
	@Override
	public void updateReply(ReplyVO replyVO) throws Exception {
		sql.update("Reply.updateReply",replyVO);
		
	}
	@Override
	public void deleteReply(ReplyVO replyVO) throws Exception {
		sql.delete("Reply.deleteReply",replyVO);
		
	}
	@Override
	public ReplyVO selectReply(int rno) throws Exception {
		// TODO Auto-generated method stub
		return sql.selectOne("Reply.selectReply",rno);
	}

}
