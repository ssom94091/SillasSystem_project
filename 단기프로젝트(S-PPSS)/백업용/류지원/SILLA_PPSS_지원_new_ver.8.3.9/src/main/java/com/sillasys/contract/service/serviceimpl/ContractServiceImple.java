package com.sillasys.contract.service.serviceimpl;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import com.sillasys.contract.dao.ContractDAO;
import com.sillasys.contract.vo.ContractVO;

import egovframework.rte.psl.dataaccess.util.EgovMap;


@Service("contractService")
public class ContractServiceImple implements ContractService{
	
	@Resource(name = "contractDAO")
	private ContractDAO contractDAO;

	
	@Override
	public List<EgovMap> selectMemberList(ContractVO vo) throws Exception {
		
		return contractDAO.selectMember(vo); 
	}
	
	
	
	
	

}
