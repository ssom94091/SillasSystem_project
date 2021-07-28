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
	public List<EgovMap> selectList(ContractVO vo) throws Exception {
		return contractDAO.selectList(vo);
	}
	
	@Override
	public List<EgovMap> selectContractList(ContractVO vo) throws Exception {
		return contractDAO.selectContractList(vo);
	}
	
	@Override
	public List<EgovMap> searchNameContractList(ContractVO vo) throws Exception{
		return contractDAO.searchNameContractList(vo);
	}
	@Override
	public List<EgovMap> searchTypeContractList(ContractVO vo) throws Exception{
		return contractDAO.searchTypeContractList(vo);
	}
	@Override
	public List<EgovMap> searchContentContractList(ContractVO vo) throws Exception{
		return contractDAO.searchContentContractList(vo);
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

	public EgovMap adminTemplate(ContractVO param) throws Exception{
		return contractDAO.adminTemplate(param);
		
	}
	public EgovMap userTemplate(ContractVO param) throws Exception{
		return contractDAO.userTemplate(param);
	}
	
	@Override
	public void delTemplate(ContractVO param) throws Exception {
		contractDAO.delTemplate(param);
	}

	@Override
	public void delTemplateWork(ContractWorkVO param) throws Exception {
		contractDAO.delTemplateWork(param);
	}

	@Override
	public void delTemplateEnd(ContractEndVO param) throws Exception {
		contractDAO.delTemplateEnd(param);
	}

	@Override
	public void delTemplateBenefit(ContractBenefitVO param) throws Exception {
		contractDAO.delTemplateBenefit(param);
	}

	@Override
	public EgovMap searchType1(ContractVO vo) {
		return contractDAO.searchType1(vo);
	}

	@Override
	public EgovMap searchType2(ContractVO vo) {
	
		return contractDAO.searchType2(vo);
	}

	@Override
	public EgovMap searchType3(ContractVO vo) {
	
		return contractDAO.searchType3(vo);
	}

	@Override
	public EgovMap searchType4(ContractVO vo) {
		return contractDAO.searchType4(vo);
	}

	@Override
	public void deleteContract(ContractVO vo) {
		contractDAO.deleteContract(vo);
	}


}
