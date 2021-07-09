package com.sillasys.user.employee.service;

import javax.servlet.http.HttpSession;

import com.sillasys.user.employee.dao.UserDAO;
import com.sillasys.user.employee.vo.UserVO;

import egovframework.rte.psl.dataaccess.util.EgovMap;

public interface UserService {
	public void doJoin(UserVO param) throws Exception;
	
	public EgovMap selectLoginUser(UserVO param) throws Exception;
	

	

}
