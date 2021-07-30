package com.sillasys.member.service.serviceimpl;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import com.sillasys.member.dao.MemberDAO;
import com.sillasys.member.service.MemberService;
import com.sillasys.member.vo.MemberVO;

import egovframework.rte.psl.dataaccess.util.EgovMap;


@Service("memberService")
public class MemberServiceImple implements MemberService{
	
	@Resource(name = "memberDAO")
	private MemberDAO memberDAO;

	@Override
	public EgovMap selectAdmin(MemberVO param) throws Exception {

		return memberDAO.selectMember(param);
	}
	
	
	
	
	

}
