package com.sillasys.admin.ec.dao;

import org.springframework.stereotype.Repository;

import com.sillasys.admin.ec.vo.EcVO;

import egovframework.rte.psl.dataaccess.EgovAbstractMapper;

@Repository("ecDAO")
public class EcDAO extends EgovAbstractMapper{
	
	
	
	public void insertEcInfo(EcVO param)throws Exception {
		insert("ecDAO.insertEcInfo", param);
	}
}
