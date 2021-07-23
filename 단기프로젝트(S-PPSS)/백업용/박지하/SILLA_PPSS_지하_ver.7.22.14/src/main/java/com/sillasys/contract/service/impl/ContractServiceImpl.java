package com.sillasys.contract.service.impl;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import com.sillasys.contract.dao.ContractDAO;
import com.sillasys.contract.service.ContractService;
import com.sillasys.contract.vo.ContractBenefitVO;
import com.sillasys.contract.vo.ContractEndVO;
import com.sillasys.contract.vo.ContractVO;
import com.sillasys.contract.vo.ContractWorkVO;

import egovframework.rte.psl.dataaccess.util.EgovMap;


@Service("contractService")
public class ContractServiceImpl implements ContractService{
	
	@Resource(name = "contractDAO")
	private ContractDAO contractDAO;


	@Override
	public List<EgovMap> selectList(EgovMap egovMap) throws Exception {
		return contractDAO.selectList(egovMap);
	}
	
	@Override
	public EgovMap trmTemplate(ContractVO param) throws Exception {
		return contractDAO.trmTemplate(param);
		
	}
	
	@Override
	public void trmTemplateWork(ContractWorkVO param) throws Exception {
		contractDAO.trmTemplateWork(param);
	}
	
	@Override
	public void trmTemplateEnd(ContractEndVO param) throws Exception {
		contractDAO.trmTemplateEnd(param);
	}
	
	@Override
	public void trmTemplateBenefit(ContractBenefitVO param) throws Exception {
		contractDAO.trmTemplateBenefit(param);
	}
	
}
