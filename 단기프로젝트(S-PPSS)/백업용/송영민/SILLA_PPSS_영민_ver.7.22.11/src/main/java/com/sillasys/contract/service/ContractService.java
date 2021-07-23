package com.sillasys.contract.service;

import java.util.List;
import com.sillasys.contract.vo.ContractVO;

import egovframework.rte.psl.dataaccess.util.EgovMap;

public interface ContractService {
	
	public List<EgovMap> selectList(ContractVO vo) throws Exception;
	

}
