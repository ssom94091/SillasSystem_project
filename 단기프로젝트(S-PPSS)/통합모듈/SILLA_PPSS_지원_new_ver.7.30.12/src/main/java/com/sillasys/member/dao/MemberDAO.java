package com.sillasys.member.dao;

import org.springframework.stereotype.Repository;

import com.sillasys.member.vo.MemberVO;

import egovframework.rte.psl.dataaccess.EgovAbstractMapper;
import egovframework.rte.psl.dataaccess.util.EgovMap;

@Repository("memberDAO")
public class MemberDAO extends EgovAbstractMapper{
	
	public EgovMap selectMember(MemberVO param) throws Exception{
		return selectOne("MemberDAO.selectAdmin", param);
	}
	
	
	

}
