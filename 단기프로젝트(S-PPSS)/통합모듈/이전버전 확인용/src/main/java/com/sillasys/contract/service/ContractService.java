package com.sillasys.contract.service;

import java.util.List;

import com.sillasys.admin.employer.vo.AdminVO;
import com.sillasys.contract.vo.ContractBenefitVO;
import com.sillasys.contract.vo.ContractEndVO;
import com.sillasys.contract.vo.ContractVO;
import com.sillasys.contract.vo.ContractWorkVO;
import com.sillasys.user.employee.vo.UserVO;

import egovframework.rte.psl.dataaccess.util.EgovMap;

public interface ContractService {
	
	
	/*＃＃영민 개발 부분 start＃＃*/
	//관리자 미작성된 계약서 목록 출력
	public List<EgovMap> selectList(ContractVO vo) throws Exception;
	
	//관리자 작성된 계약서 목록 출력
	public List<EgovMap> selectContractList(ContractVO vo) throws Exception;
	
	/*관리자 입장에서 미작성된 계약서를 검색하는 기능 (이름, 유형, 업무내용)*/
	public List<EgovMap> searchNameContractList(ContractVO vo) throws Exception;
	public List<EgovMap> searchTypeContractList(ContractVO vo) throws Exception;
	public List<EgovMap> searchContentContractList(ContractVO vo) throws Exception;
	
	/*각 계약서 view 기능  1,2,3,4*/
	public EgovMap searchType1(ContractVO vo);
	public EgovMap searchType2(ContractVO vo);
	public EgovMap searchType3(ContractVO vo);
	public EgovMap searchType4(ContractVO vo);
	
	/*등록된 계약서 삭제*/
	public void deleteContract(ContractVO vo);

	 /*계약서 양식 작성시 회사에 등록된 직원 조회 기능*/
	public List<EgovMap> doMemberCheck(AdminVO vo); 
	
	
	/*계약서 작성 시 관리자와 근로자에게 기본적으로 제공되는 정보들*/
	public EgovMap adminTemplate(ContractVO param) throws Exception;
	public EgovMap userTemplate(ContractVO param) throws Exception;
	
	
	/*표준근로계약서(기간정함) 작성*/
	public void writeContract1(ContractVO vo);
	/*영민 End */
	
	
	public EgovMap trmTemplate(ContractVO param) throws Exception;
	public void trmTemplateWork(ContractWorkVO param) throws Exception;
	public void trmTemplateEnd(ContractEndVO param) throws Exception;
	public void trmTemplateBenefit(ContractBenefitVO param) throws Exception;
	
	
	public void delTemplate(ContractVO param) throws Exception;
	public void delTemplateWork(ContractWorkVO param) throws Exception;
	public void delTemplateEnd(ContractEndVO param) throws Exception;
	public void delTemplateBenefit(ContractBenefitVO param) throws Exception;

	


	 

}
