package com.sillasys.contract.dao;

import org.springframework.stereotype.Repository;

import com.sillasys.contract.vo.Contract_1_VO;
import com.sillasys.contract.vo.Contract_2_VO;
import com.sillasys.contract.vo.Contract_3_VO;
import com.sillasys.contract.vo.Contract_4_VO;

import egovframework.rte.psl.dataaccess.EgovAbstractMapper;

@Repository("contractDAO")
public class ContractDAO extends EgovAbstractMapper{
	public void trmTemplate1(Contract_1_VO param) throws Exception{
		 insert("contractDAO.trmTemplate1", param);
	}
	public void trmTemplate2(Contract_2_VO param) throws Exception{
		 insert("contractDAO.trmTemplate2", param);
	}
	public void trmTemplate3(Contract_3_VO param) throws Exception{
		 insert("contractDAO.trmTemplate3", param);
	}
	public void trmTemplate4(Contract_4_VO param) throws Exception{
		 insert("contractDAO.trmTemplate4", param);
	}

}
