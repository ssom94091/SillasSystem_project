package com.sillasys.user.employee.service.Impl;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import com.sillasys.contract.vo.ContractVO;
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
}
