package com.sillasys.user.employee.dao;

import org.springframework.stereotype.Repository;

import com.sillasys.user.employee.vo.ContractVO;

import egovframework.rte.psl.dataaccess.EgovAbstractMapper;

@Repository("ContractDAO")
public class ContractDAO extends EgovAbstractMapper{
   public void trmTemplate1(ContractVO param) throws Exception{
       insert("ContractDAO.trmTemplate1", param);
   }
}