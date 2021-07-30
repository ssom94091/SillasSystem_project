package com.sillasys.contract.service;

import java.util.List;

import com.sillasys.contract.vo.ContractBenefitVO;
import com.sillasys.contract.vo.ContractEndVO;
import com.sillasys.contract.vo.ContractVO;
import com.sillasys.contract.vo.ContractWorkVO;

import egovframework.rte.psl.dataaccess.util.EgovMap;

public interface ContractService {
	
	public List<EgovMap> selectList(ContractVO vo) throws Exception;
	public List<EgovMap> selectContractList(ContractVO vo) throws Exception;
	public List<EgovMap> searchNameContractList(ContractVO vo) throws Exception;
	public List<EgovMap> searchTypeContractList(ContractVO vo) throws Exception;
	public List<EgovMap> searchContentContractList(ContractVO vo) throws Exception;
	public EgovMap trmTemplate(ContractVO param) throws Exception;
	public void trmTemplateWork(ContractWorkVO param) throws Exception;
	public void trmTemplateEnd(ContractEndVO param) throws Exception;
	public void trmTemplateBenefit(ContractBenefitVO param) throws Exception;
	
	public EgovMap adminTemplate(ContractVO param) throws Exception;
	public EgovMap userTemplate(ContractVO param) throws Exception;
	
	
	public void delTemplate(ContractVO param) throws Exception;
	public void delTemplateWork(ContractWorkVO param) throws Exception;
	public void delTemplateEnd(ContractEndVO param) throws Exception;
	public void delTemplateBenefit(ContractBenefitVO param) throws Exception;
	public EgovMap searchType1(ContractVO vo);
	public EgovMap searchType2(ContractVO vo);
	public EgovMap searchType3(ContractVO vo);
	public EgovMap searchType4(ContractVO vo);
	public void deleteContract(ContractVO vo);

	 

}
