package com.sillasys.user.employee.dao;

import org.springframework.stereotype.Repository;

import com.sillasys.user.employee.vo.ContractVO2;

import egovframework.rte.psl.dataaccess.EgovAbstractMapper;

@Repository("ContractDAO2")
public class ContractDAO2 extends EgovAbstractMapper{
	public void trmTemplate2(ContractVO2 param) throws Exception{
		 insert("ContractDAO2.trmTemplate2", param);
	}
}
