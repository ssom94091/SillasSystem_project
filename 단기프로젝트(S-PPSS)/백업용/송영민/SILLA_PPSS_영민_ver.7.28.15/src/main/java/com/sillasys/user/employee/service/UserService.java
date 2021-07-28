package com.sillasys.user.employee.service;

import java.util.List;

import com.sillasys.contract.vo.ContractBenefitVO;
import com.sillasys.contract.vo.ContractEndVO;
import com.sillasys.contract.vo.ContractVO;
import com.sillasys.contract.vo.ContractWorkVO;
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
	public void delContract(ContractVO param) throws Exception;
	
	public EgovMap searchType1(ContractVO vo);
	public EgovMap searchType2(ContractVO vo);
	public EgovMap searchType3(ContractVO vo);
	public EgovMap searchType4(ContractVO vo);
}
