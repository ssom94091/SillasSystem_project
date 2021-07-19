package com.sillasys.user.employee.dao;

import org.springframework.stereotype.Repository;

import com.sillasys.user.employee.vo.ContractVO3;

import egovframework.rte.psl.dataaccess.EgovAbstractMapper;

@Repository("ContractDAO3")
public class ContractDAO3 extends EgovAbstractMapper{
   public void trmTemplate3(ContractVO3 param) throws Exception{
       insert("ContractDAO3.trmTemplate3", param);
   }
}