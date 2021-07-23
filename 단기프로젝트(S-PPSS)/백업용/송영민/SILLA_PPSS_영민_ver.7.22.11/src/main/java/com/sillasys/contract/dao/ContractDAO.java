package com.sillasys.contract.dao;

import java.util.List;

import org.springframework.stereotype.Repository;

import com.sillasys.contract.vo.ContractVO;

import egovframework.rte.psl.dataaccess.EgovAbstractMapper;
import egovframework.rte.psl.dataaccess.util.EgovMap;

@Repository("contractDAO")
public class ContractDAO extends EgovAbstractMapper{

	public List<EgovMap> selectList(ContractVO vo){
		return selectList("contractDAO.selectList", vo);
	}

	

	
}
