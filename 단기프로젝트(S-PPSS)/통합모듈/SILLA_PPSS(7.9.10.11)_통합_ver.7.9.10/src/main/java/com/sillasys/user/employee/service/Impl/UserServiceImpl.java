package com.sillasys.user.employee.service.Impl;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import com.sillasys.user.employee.dao.UserDAO;
import com.sillasys.user.employee.service.UserService;
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

	
	
}
