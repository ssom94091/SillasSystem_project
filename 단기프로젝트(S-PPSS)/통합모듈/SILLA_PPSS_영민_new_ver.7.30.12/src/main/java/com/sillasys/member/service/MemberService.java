package com.sillasys.member.service;


import com.sillasys.member.vo.MemberVO;

import egovframework.rte.psl.dataaccess.util.EgovMap;

public interface MemberService {
	
	public EgovMap selectAdmin(MemberVO param) throws Exception;
}
