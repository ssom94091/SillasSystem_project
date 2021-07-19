package com.sillasys.user.employee.dao;

import org.springframework.stereotype.Repository;

import com.sillasys.user.employee.vo.ContractVO4;

import egovframework.rte.psl.dataaccess.EgovAbstractMapper;

@Repository("ContractDAO4")
public class ContractDAO4 extends EgovAbstractMapper{
   public void trmTemplate4(ContractVO4 param) throws Exception{
       insert("ContractDAO4.trmTemplate4", param);
   }
}