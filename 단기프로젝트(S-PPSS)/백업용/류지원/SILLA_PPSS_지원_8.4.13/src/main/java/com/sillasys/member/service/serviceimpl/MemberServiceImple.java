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
	public List<EgovMap> selectMemberList(MemberVO vo) throws Exception {
		
		return memberDAO.selectMember(vo); 
	}
	
	@Override
	public EgovMap selectMember(MemberVO vo) throws Exception {
		return memberDAO.selectMemberOne(vo);
	}

	@Override
	public void deleteMember(MemberVO vo) {
		memberDAO.deleteMember(vo);
	}

	@Override
	public void createMember(MemberVO vo) {
		memberDAO.createMember(vo);
		
	}

	@Override
	public EgovMap searchLastMember(MemberVO vo) {
		return memberDAO.searchLastMember(vo);
	}
	
	
	
	
	

}
