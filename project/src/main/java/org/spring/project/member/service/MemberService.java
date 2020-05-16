package org.spring.project.member.service;

import org.spring.project.member.service.impl.MemberVO;

public interface MemberService {
	
	public void register(MemberVO memberVO)throws Exception;
	public MemberVO login(MemberVO memberVO)throws Exception;
	public void memberUpdate(MemberVO memberVO)throws Exception;
	public void memberDelete(MemberVO memberVO)throws Exception;
	public int passChk(MemberVO memberVO)throws Exception;
	public int idChk(MemberVO memberVO)throws Exception;
}
