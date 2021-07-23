package com.sillasys.user.employee.service;

import com.sillasys.user.employee.vo.UserVO;

import egovframework.rte.psl.dataaccess.util.EgovMap;

public interface UserService {
	public void doJoin(UserVO param) throws Exception;
	public EgovMap selectLoginUser(UserVO param) throws Exception;
	public EgovMap doIdCheck(String string) throws Exception;
}
