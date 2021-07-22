package com.sillasys.user.employee.dao;

import org.springframework.stereotype.Repository;

import com.sillasys.user.employee.vo.ContractVO;
import com.sillasys.user.employee.vo.ContractWorkTimeVO;
import com.sillasys.user.employee.vo.ContractEndTimeVO;
import com.sillasys.user.employee.vo.ContractBenefitVO;

import egovframework.rte.psl.dataaccess.EgovAbstractMapper;

@Repository("ContractEndTimeDAO")
public class ContractWorkTimeDAO extends EgovAbstractMapper{
	public void trmTemplate1(ContractEndTimeDAO param) throws Exception{
		 insert("ContractEndTimeDAO.trmTemplate1", param);
	}
}
