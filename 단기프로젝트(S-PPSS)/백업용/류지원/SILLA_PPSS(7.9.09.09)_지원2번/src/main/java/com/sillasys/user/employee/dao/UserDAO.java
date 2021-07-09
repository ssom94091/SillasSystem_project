package com.sillasys.user.employee.dao;


import org.springframework.stereotype.Repository;

import com.sillasys.user.employee.vo.UserVO;

import egovframework.com.cmm.service.impl.EgovComAbstractDAO;
import egovframework.rte.psl.dataaccess.EgovAbstractMapper;
import egovframework.rte.psl.dataaccess.util.EgovMap;

@Repository("userDAO")
public class UserDAO extends EgovAbstractMapper{
	
	
	public void doJoin(UserVO param) throws Exception{
		 insert("userDAO.doJoin", param);
	}
	
	public EgovMap selectLoginUser(UserVO param) throws Exception {
		return selectOne("userDAO.selectLoginUser", param);
	}
	

	
}
