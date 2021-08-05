package com.sillasys.member.dao;

import java.util.List;

import org.springframework.stereotype.Repository;

import com.sillasys.member.vo.MemberVO;

import egovframework.rte.psl.dataaccess.EgovAbstractMapper;
import egovframework.rte.psl.dataaccess.util.EgovMap;

@Repository("memberDAO")
public class MemberDAO extends EgovAbstractMapper{
	
	/*member.do  직원목록 출력  */
	public List<EgovMap> selectMemberList(MemberVO vo) throws Exception{
		return selectList("memberDAO.selectMemberList", vo);
	}
	//이름으로 검색
	public List<EgovMap> searchNameMemberList(MemberVO vo)throws Exception { 
		// TODO Auto-generated method stub
		return selectList("memberDAO.searchNameMemberList", vo);
	}
	//사원번호로 검색
	public List<EgovMap> searchPktMemberList(MemberVO vo) throws Exception{
		// TODO Auto-generated method stub
		return selectList("memberDAO.searchPktMemberList", vo);
	}
		
		
	public EgovMap selectMemberOne(MemberVO vo) throws Exception {
		return selectOne("memberDAO.selectMember", vo);
	}

	public void deleteMember(MemberVO vo) throws Exception{
			delete("memberDAO.deleteMember", vo);
	}
	public void createMember(MemberVO vo)throws Exception {
		delete("memberDAO.createMember", vo);
	}

	public EgovMap searchLastMember(MemberVO vo)throws Exception {
		return  selectOne("memberDAO.searchLastMember", vo);
	}


}

