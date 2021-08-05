package com.sillasys.member.service;


import java.util.List;

import com.sillasys.member.vo.MemberVO;

import egovframework.rte.psl.dataaccess.util.EgovMap;

public interface MemberService {
	
	public List<EgovMap> selectMemberList(MemberVO vo) throws Exception;
	
	public EgovMap selectMemberOne(MemberVO vo) throws Exception;

	public void deleteMember(MemberVO vo)throws Exception;

	public void createMember(MemberVO vo)throws Exception;

	public EgovMap searchLastMember(MemberVO vo)throws Exception;

	public List<EgovMap> searchNameMemberList(MemberVO vo)throws Exception;

	public List<EgovMap> searchPktMemberList(MemberVO vo)throws Exception;

}
