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

	public List<EgovMap> selectList(EgovMap egovMap){
		return selectList("contractDAO.selectList", egovMap);
	}

	public void trmTemplate(ContractVO param) throws Exception {
		insert("contractDAO.trmTemplate", param);
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

	

	
}
