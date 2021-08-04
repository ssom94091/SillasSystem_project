package com.sillasys.member.dao;

import java.util.List;

import org.springframework.stereotype.Repository;

import com.sillasys.member.vo.MemberVO;

import egovframework.rte.psl.dataaccess.EgovAbstractMapper;
import egovframework.rte.psl.dataaccess.util.EgovMap;

@Repository("memberDAO")
public class MemberDAO extends EgovAbstractMapper{
	
	public List<EgovMap> selectMember(MemberVO vo) throws Exception{
		return selectList("memberDAO.selectMemberList", vo);
	}
	
	public EgovMap selectMemberOne(MemberVO vo) throws Exception {
		return selectOne("memberDAO.selectMember", vo);
	}

	public void deleteMember(MemberVO vo) {
			delete("memberDAO.deleteMember", vo);
	}
	public void createMember(MemberVO vo) {
		delete("memberDAO.createMember", vo);
}

	public EgovMap searchLastMember(MemberVO vo) {
		return  selectOne("memberDAO.searchLastMember", vo);
	}

}
