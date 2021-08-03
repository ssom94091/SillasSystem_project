package com.sillasys.contract.service.serviceimpl;


import java.util.List;

import com.sillasys.contract.vo.ContractVO;

import egovframework.rte.psl.dataaccess.util.EgovMap;

public interface ContractService {
	
	public List<EgovMap> selectMemberList(ContractVO vo) throws Exception;
}
