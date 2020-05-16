package org.spring.project.member.service.impl;


import org.spring.project.member.service.MemberDAO;
import org.spring.project.member.service.MemberService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class MemberServiceImpl implements MemberService{

	@Autowired
	private MemberDAO memberDAO;
	@Override
	public void register(MemberVO memberVO) throws Exception {
		memberDAO.register(memberVO);
		
	}
	@Override
	public MemberVO login(MemberVO memberVO) throws Exception {
		// TODO Auto-generated method stub
		return memberDAO.login(memberVO);
	}
	@Override
	public void memberUpdate(MemberVO memberVO) throws Exception {
		memberDAO.memberUpdate(memberVO);
		
	}
	@Override
	public void memberDelete(MemberVO memberVO) throws Exception {
		memberDAO.memberDelete(memberVO);
		
	}
	@Override
	public int passChk(MemberVO memberVO) throws Exception {
		int result = memberDAO.passChk(memberVO);
		return result;
	}
	@Override
	public int idChk(MemberVO memberVO) throws Exception {
		int result = memberDAO.idChk(memberVO);
		return result;
	}

}
