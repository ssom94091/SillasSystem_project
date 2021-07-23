package com.sillasys.user.employee.dao;


import java.util.List;

import org.springframework.stereotype.Repository;

import com.sillasys.contract.vo.ContractVO;
import com.sillasys.user.employee.vo.CompanyVO;
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
	
	public EgovMap doIdCheck(String param) throws Exception{
		return selectOne("userDAO.doIdCheck", param);
	}
	
	public List<EgovMap> coList(CompanyVO param) throws Exception {
		return selectList("userDAO.coList",param);
	}
	
	public void updateCoop(UserVO param) throws Exception {
		update("userDAO.updateCoop",param);
	}
	
	public List<EgovMap> getContract(ContractVO param) throws Exception {
		return selectList("userDAO.getContract",param);
	}
	
	
}
