package com.sillasys.user.employee.service;

import java.util.List;

import com.sillasys.contract.vo.ContractVO;
import com.sillasys.user.employee.vo.CompanyVO;
import com.sillasys.user.employee.vo.UserVO;

import egovframework.rte.psl.dataaccess.util.EgovMap;

public interface UserService {
	public void doJoin(UserVO param) throws Exception;
	public EgovMap selectLoginUser(UserVO param) throws Exception;
	public EgovMap doIdCheck(String string) throws Exception;
	
	public List<EgovMap> coList(CompanyVO param) throws Exception;
	
	public void updateCoop(UserVO param) throws Exception;
	
	public List<EgovMap> getContract(ContractVO param) throws Exception;
}
