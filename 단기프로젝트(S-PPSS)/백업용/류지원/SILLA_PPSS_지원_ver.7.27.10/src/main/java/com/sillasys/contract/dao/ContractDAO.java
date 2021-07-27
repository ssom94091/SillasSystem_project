package com.sillasys.contract.dao;

import java.util.List;

import org.springframework.stereotype.Repository;

import com.sillasys.contract.vo.ContractBenefitVO;
import com.sillasys.contract.vo.ContractEndVO;
import com.sillasys.contract.vo.ContractVO;
import com.sillasys.contract.vo.ContractWorkVO;

import egovframework.rte.psl.dataaccess.EgovAbstractMapper;
import egovframework.rte.psl.dataaccess.util.EgovMap;

@Repository("contractDAO")
public class ContractDAO extends EgovAbstractMapper{

	public List<EgovMap> selectList(ContractVO vo){
		return selectList("contractDAO.selectList", vo);
	}

	public EgovMap trmTemplate(ContractVO param) throws Exception {
		insert("contractDAO.trmTemplate", param);
		return selectOne("contractDAO.resultpk",param);
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
