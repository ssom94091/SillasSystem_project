package com.sillasys.admin.dao;

import java.util.List;

import org.springframework.stereotype.Repository;

import com.sillasys.admin.vo.AdminVO;

import egovframework.rte.psl.dataaccess.EgovAbstractMapper;
import egovframework.rte.psl.dataaccess.util.EgovMap;

@Repository("adminDAO")
public class AdminDAO extends EgovAbstractMapper{
	
	public EgovMap selectAdmin(AdminVO param) throws Exception{
		return selectOne("adminDAO.selectAdmin", param);
	}
	
	
	

}
