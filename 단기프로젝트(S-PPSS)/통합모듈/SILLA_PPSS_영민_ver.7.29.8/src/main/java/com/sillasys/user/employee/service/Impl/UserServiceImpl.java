package com.sillasys.user.employee.service.Impl;
import javax.annotation.Resource;
import java.util.List;
import org.springframework.stereotype.Service;

import com.sillasys.contract.vo.ContractBenefitVO;
import com.sillasys.contract.vo.ContractEndVO;
import com.sillasys.contract.vo.ContractVO;
import com.sillasys.contract.vo.ContractWorkVO;
import com.sillasys.user.employee.dao.UserDAO;
import com.sillasys.user.employee.service.UserService;
import com.sillasys.user.employee.vo.CompanyVO;
import com.sillasys.user.employee.vo.UserVO;

import egovframework.rte.psl.dataaccess.util.EgovMap;


@Service("userService")
public class UserServiceImpl implements UserService{

	@Resource(name = "userDAO")
	private UserDAO userDAO;
	
	
	@Override
	public void doJoin(UserVO param) throws Exception {
		userDAO.doJoin(param);
	}


	@Override
	public EgovMap selectLoginUser(UserVO param) throws Exception {
		return userDAO.selectLoginUser(param);
	}


	@Override
	public EgovMap doIdCheck(String param) throws Exception {
		return userDAO.doIdCheck(param);
	}

	@Override
	public List<EgovMap> coList(CompanyVO param) throws Exception {
		return userDAO.coList(param);
	}
	
	@Override
	public void updateCoop(UserVO param) throws Exception {
		userDAO.updateCoop(param);
	}

	@Override
	public List<EgovMap> getContract(ContractVO param) throws Exception {
		return userDAO.getContract(param);
	}
	
	@Override
	public void delContract(ContractVO param) throws Exception {
		userDAO.delContract(param);
	}
	
	@Override
	public EgovMap searchType1(ContractVO vo) {
		return userDAO.searchType1(vo);
	}

	@Override
	public EgovMap searchType2(ContractVO vo) {
	
		return userDAO.searchType2(vo);
	}

	@Override
	public EgovMap searchType3(ContractVO vo) {
	
		return userDAO.searchType3(vo);
	}

	@Override
	public EgovMap searchType4(ContractVO vo) {
		return userDAO.searchType4(vo);
	}


	

	
	
}
