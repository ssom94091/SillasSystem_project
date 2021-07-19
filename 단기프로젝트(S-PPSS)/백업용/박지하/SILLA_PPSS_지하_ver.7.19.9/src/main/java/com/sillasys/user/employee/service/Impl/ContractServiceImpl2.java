package com.sillasys.user.employee.service.Impl;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import com.sillasys.user.employee.dao.ContractDAO2;
import com.sillasys.user.employee.service.ContractService2;
import com.sillasys.user.employee.vo.ContractVO2;

@Service("ContractService2")
public class ContractServiceImpl2 implements ContractService2 {
   @Resource(name = "ContractDAO2")
   private ContractDAO2 ContractDAO2;
   
   @Override
   public void trmTemplate2(ContractVO2 param) throws Exception {
      ContractDAO2.trmTemplate2(param);
   }
}
