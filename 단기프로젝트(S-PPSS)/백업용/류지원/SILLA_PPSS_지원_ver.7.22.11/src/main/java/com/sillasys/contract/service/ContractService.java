package com.sillasys.contract.service;

import java.util.List;

import com.sillasys.contract.vo.ContractBenefitVO;
import com.sillasys.contract.vo.ContractEndVO;
import com.sillasys.contract.vo.ContractVO;
import com.sillasys.contract.vo.ContractWorkVO;

import egovframework.rte.psl.dataaccess.util.EgovMap;

public interface ContractService {
	
public List<EgovMap> selectList(EgovMap egovMap) throws Exception;
	
	public EgovMap trmTemplate(ContractVO param) throws Exception;
	public void trmTemplateWork(ContractWorkVO param) throws Exception;
	public void trmTemplateEnd(ContractEndVO param) throws Exception;
	public void trmTemplateBenefit(ContractBenefitVO param) throws Exception;
	
	public void delTemplate(ContractVO param) throws Exception;
	public void delTemplateWork(ContractWorkVO param) throws Exception;
	public void delTemplateEnd(ContractEndVO param) throws Exception;
	public void delTemplateBenefit(ContractBenefitVO param) throws Exception;
	

}
