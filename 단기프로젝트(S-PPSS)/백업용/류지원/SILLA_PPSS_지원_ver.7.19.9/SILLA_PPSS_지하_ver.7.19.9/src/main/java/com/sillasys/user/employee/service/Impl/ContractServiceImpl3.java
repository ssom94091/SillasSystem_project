package com.sillasys.user.employee.service.Impl;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import com.sillasys.user.employee.dao.ContractDAO3;
import com.sillasys.user.employee.service.ContractService3;
import com.sillasys.user.employee.vo.ContractVO3;

@Service("ContractService3")
public class ContractServiceImpl3 implements ContractService3 {
   @Resource(name = "ContractDAO3")
   private ContractDAO3 ContractDAO3;
   
   @Override
   public void trmTemplate3(ContractVO3 param) throws Exception {
      ContractDAO3.trmTemplate3(param);
   }
}
