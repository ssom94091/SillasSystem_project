package com.sillasys.member.service;


import java.util.List;

import com.sillasys.member.vo.MemberVO;

import egovframework.rte.psl.dataaccess.util.EgovMap;

public interface MemberService {
	
	public List<EgovMap> selectMemberList(MemberVO vo) throws Exception;
}
