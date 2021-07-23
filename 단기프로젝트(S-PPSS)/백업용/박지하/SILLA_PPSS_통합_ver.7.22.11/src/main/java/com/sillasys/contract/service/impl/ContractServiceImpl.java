package com.sillasys.contract.service.impl;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import com.sillasys.contract.dao.ContractDAO;
import com.sillasys.contract.service.ContractService;
import egovframework.rte.psl.dataaccess.util.EgovMap;


@Service("contractService")
public class ContractServiceImpl implements ContractService{
	
	@Resource(name = "contractDAO")
	private ContractDAO contractDAO;


	@Override
	public List<EgovMap> selectList(EgovMap egovMap) throws Exception {
		return contractDAO.selectList(egovMap);
	}
}
