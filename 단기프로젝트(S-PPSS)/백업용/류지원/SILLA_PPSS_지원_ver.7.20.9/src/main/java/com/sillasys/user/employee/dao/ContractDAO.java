package com.sillasys.user.employee.dao;

import org.springframework.stereotype.Repository;

import com.sillasys.user.employee.vo.ContractVO;
import com.sillasys.user.employee.vo.ContractWorkTimeVO;
import com.sillasys.user.employee.vo.ContractEndTimeVO;
import com.sillasys.user.employee.vo.ContractBenefitVO;

import egovframework.rte.psl.dataaccess.EgovAbstractMapper;

@Repository("ContractDAO")
public class ContractDAO extends EgovAbstractMapper{
	public void trmTemplate1(ContractVO param) throws Exception{
		 insert("ContractDAO.trmTemplate1", param);
	}
	
	public void trmTemplate1(ContractWorkTimeVO param) throws Exception{
		 insert("ContractDAO.trmTemplate1", param);
	}
	
	public void trmTemplate1(ContractEndTimeVO param) throws Exception{
		 insert("ContractDAO.trmTemplate1", param);
	}
	
	public void trmTemplate1(ContractBenefitVO param) throws Exception{
		 insert("ContractDAO.trmTemplate1", param);
	}
}
