package com.sillasys.contract.service.Impl;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import com.sillasys.contract.service.ContractService;
import com.sillasys.contract.dao.ContractDAO;
import com.sillasys.contract.vo.Contract_1_VO;
import com.sillasys.contract.vo.Contract_2_VO;
import com.sillasys.contract.vo.Contract_3_VO;
import com.sillasys.contract.vo.Contract_4_VO;

@Service("contractService")
public class ContractServiceImpl implements ContractService {
   @Resource(name = "contractDAO")
   private ContractDAO contractDAO;
   
   @Override
   public void trmTemplate1(Contract_1_VO param) throws Exception {
	   contractDAO.trmTemplate1(param);
   }
   
   @Override
   public void trmTemplate2(Contract_2_VO param) throws Exception {
	   contractDAO.trmTemplate2(param);
   }
   
   @Override
   public void trmTemplate3(Contract_3_VO param) throws Exception {
	   contractDAO.trmTemplate3(param);
   }
   
   @Override
   public void trmTemplate4(Contract_4_VO param) throws Exception {
	   contractDAO.trmTemplate4(param);
   }
}