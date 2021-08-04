package com.sillasys.contract.service.serviceimpl;


import java.util.List;

import com.sillasys.contract.vo.ContractVO;
import com.sillasys.member.vo.MemberVO;

import egovframework.rte.psl.dataaccess.util.EgovMap;

public interface ContractService {
	

	public void insertTemplate(ContractVO vo) throws Exception;

	public EgovMap viewContract(ContractVO vo) throws Exception;
}
