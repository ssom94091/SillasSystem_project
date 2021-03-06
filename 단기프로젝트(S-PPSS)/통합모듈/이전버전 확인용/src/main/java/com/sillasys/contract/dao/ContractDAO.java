package com.sillasys.contract.dao;

import java.util.List;

import org.springframework.stereotype.Repository;

import com.sillasys.admin.employer.vo.AdminVO;
import com.sillasys.contract.vo.ContractBenefitVO;
import com.sillasys.contract.vo.ContractEndVO;
import com.sillasys.contract.vo.ContractVO;
import com.sillasys.contract.vo.ContractWorkVO;
import com.sillasys.user.employee.vo.UserVO;

import egovframework.rte.psl.dataaccess.EgovAbstractMapper;
import egovframework.rte.psl.dataaccess.util.EgovMap;


@Repository("contractDAO")
public class ContractDAO extends EgovAbstractMapper{
	
	
	/*영민 개발 부분*/
	/*미작성된 계약서 조회 & 작성된 계약서 조회*/
	public List<EgovMap> selectList(ContractVO vo){
		System.out.println("리스트 전체검색");
		return selectList("contractDAO.selectList", vo);
	}
	public List<EgovMap> selectContractList(ContractVO vo){
		return selectList("contractDAO.selectContractList", vo);
	}
	
	
	/*미작성된 계약서 검색기능 (이름, 유형, 업무)*/
	public List<EgovMap> searchNameContractList(ContractVO vo){
		System.out.println("리스트 이름검색");
		return selectList("contractDAO.searchNameContractList", vo);
	}
	public List<EgovMap> searchTypeContractList(ContractVO vo){
		System.out.println("리스트 유형검색");
		return selectList("contractDAO.searchTypeContractList", vo);
	}
	public List<EgovMap> searchContentContractList(ContractVO vo){
		System.out.println("리스트 업무내용검색");
		return selectList("contractDAO.searchContentContractList", vo);
	}
	
	
	/*계약서 양식 작성 시  받을 직원 조회*/
	public List<EgovMap> doMemberCheck(AdminVO vo) {
		System.out.println(vo.getCompany_name()+"에서 직원을 조회합니다.");
		return selectList("contractDAO.doMemberCheck", vo);
	}
	
	
	
	public EgovMap searchType1(ContractVO vo) {
		
		return selectOne("contractDAO.searchType1",vo);
	}
	public EgovMap searchType2(ContractVO vo) {
		return selectOne("contractDAO.searchType12",vo);
	}
	public EgovMap searchType3(ContractVO vo) {
		return selectOne("contractDAO.searchType3",vo);
	}
	public EgovMap searchType4(ContractVO vo) {
		return selectOne("contractDAO.searchType4",vo);
	}
	
	/*표준근로계약서(기간정함) 작성*/
	public void writeContract1(ContractVO vo) {
		insert("writeContract1",vo);
	}
	public void  deleteContract(ContractVO vo) {
		delete("contractDAO.deleteContract", vo);
		
	}
	
	
	/*＃＃영민 End＃＃*/
	
	
	public EgovMap trmTemplate(ContractVO param) throws Exception {
		insert("contractDAO.trmTemplate", param);
		return selectOne("contractDAO.resultpk",param);
	}
	
	public EgovMap adminTemplate(ContractVO param) throws Exception {
		return selectOne("contractDAO.admin",param);
	}
	
	public EgovMap userTemplate(ContractVO param) throws Exception {
		return selectOne("contractDAO.user",param);
	}

	public void trmTemplateWork(ContractWorkVO param) throws Exception {
		insert("contractDAO.trmTemplateWork", param);
	}

	public void trmTemplateEnd(ContractEndVO param) throws Exception {
		insert("contractDAO.trmTemplateEnd", param);
	}

	public void trmTemplateBenefit(ContractBenefitVO param) throws Exception {
		insert("contractDAO.trmTemplateBenefit", param);
	}

	public void delTemplate(ContractVO param) throws Exception {
		delete("contractDAO.delTemplate", param);
	}

	public void delTemplateWork(ContractWorkVO param) throws Exception {
		delete("contractDAO.delTemplateWork", param);
	}

	public void delTemplateEnd(ContractEndVO param) throws Exception {
		delete("contractDAO.delTemplateEnd", param);
	}

	public void delTemplateBenefit(ContractBenefitVO param) throws Exception {
		delete("contractDAO.delTemplateBenefit", param);
	}

	
	
	

	
}
