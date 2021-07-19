package com.sillasys.user.employee.service.Impl;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import com.sillasys.user.employee.dao.ContractDAO4;
import com.sillasys.user.employee.service.ContractService4;
import com.sillasys.user.employee.vo.ContractVO4;

@Service("ContractService4")
public class ContractServiceImpl4 implements ContractService4 {
   @Resource(name = "ContractDAO4")
   private ContractDAO4 ContractDAO4;
   
   @Override
   public void trmTemplate4(ContractVO4 param) throws Exception {
      ContractDAO4.trmTemplate4(param);
   }
}
