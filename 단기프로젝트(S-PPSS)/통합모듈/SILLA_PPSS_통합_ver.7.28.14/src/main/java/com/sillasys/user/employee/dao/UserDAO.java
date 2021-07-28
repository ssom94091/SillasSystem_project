package com.sillasys.user.employee.dao;
import java.util.List;
import org.springframework.stereotype.Repository;

import com.sillasys.contract.vo.ContractBenefitVO;
import com.sillasys.contract.vo.ContractEndVO;
import com.sillasys.contract.vo.ContractVO;
import com.sillasys.contract.vo.ContractWorkVO;
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
	
	public List<EgovMap> writeContract(ContractVO param) throws Exception {
		return selectList("userDAO.writeContract", param);
	}
	
	public List<EgovMap> writeWorkContract(ContractWorkVO param) throws Exception {
		return selectList("userDAO.writeWorkContract", param);
	}
	
	public List<EgovMap> writeEndContract(ContractEndVO param) throws Exception {
		return selectList("userDAO.writeEndContract", param);
	}
	
	public List<EgovMap> writeBenefitContract(ContractBenefitVO param) throws Exception {
		return selectList("userDAO.writeBenefitContract", param);
	}
	
	public List<EgovMap> writeCompanyContract(CompanyVO param) throws Exception {
		return selectList("userDAO.writeCompanyContract", param);
	}
	
	public List<EgovMap> writeUserContract(UserVO param) throws Exception {
		return selectList("userDAO.writeUserContract", param);
	}
	
	public void delContract(ContractVO param) throws Exception {
		delete("contractDAO.delContract", param);
	}
	
	
	
}
