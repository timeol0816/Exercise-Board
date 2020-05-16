package org.spring.project.member.service.impl;


import org.mybatis.spring.SqlSessionTemplate;
import org.spring.project.member.service.MemberDAO;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

@Repository
public class MemberDAOImpl implements MemberDAO{

	@Autowired
	private SqlSessionTemplate sql;
	@Override
	public void register(MemberVO memberVO) throws Exception {
		System.out.println("DAO");
		sql.insert("Member.register",memberVO);
		
	}
	@Override
	public MemberVO login(MemberVO memberVO) throws Exception {
		// TODO Auto-generated method stub
		return sql.selectOne("Member.login", memberVO);
	}
	@Override
	public void memberUpdate(MemberVO memberVO) throws Exception {
		sql.update("Member.memberUpdate",memberVO);
		
	}
	@Override
	public void memberDelete(MemberVO memberVO) throws Exception {
		sql.delete("Member.memberDelete",memberVO);
		
	}
	@Override
	public int passChk(MemberVO memberVO) throws Exception {
		int result = sql.selectOne("Member.passChk", memberVO);
		return result;
	}
	@Override
	public int idChk(MemberVO memberVO) throws Exception {
		int result = sql.selectOne("Member.idChk",memberVO);
		return result;
	}

}
