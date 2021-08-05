package com.sillasys.contract.service.serviceimpl;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import com.sillasys.contract.dao.ContractDAO;
import com.sillasys.contract.vo.ContractVO;
import com.sillasys.member.vo.MemberVO;

import egovframework.rte.psl.dataaccess.util.EgovMap;


@Service("contractService")
public class ContractServiceImple implements ContractService{
	
	@Resource(name = "contractDAO")
	private ContractDAO contractDAO;


	@Override
	public void insertTemplate(ContractVO vo) throws Exception {
		contractDAO.insertTemplate(vo); 
		
	}


	@Override
	public EgovMap viewContract(ContractVO vo) throws Exception {
		return contractDAO.seletViewContract(vo);
	}
	
	
	
	
	

}
