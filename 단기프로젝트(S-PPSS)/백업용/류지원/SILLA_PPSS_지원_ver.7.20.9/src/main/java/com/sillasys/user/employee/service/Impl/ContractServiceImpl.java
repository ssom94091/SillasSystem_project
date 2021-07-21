package com.sillasys.user.employee.service.Impl;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;
import com.sillasys.user.employee.dao.ContractDAO;
import com.sillasys.user.employee.service.ContractService;
import com.sillasys.user.employee.vo.ContractBenefitVO;
import com.sillasys.user.employee.vo.ContractEndTimeVO;
import com.sillasys.user.employee.vo.ContractVO;
import com.sillasys.user.employee.vo.ContractWorkTimeVO;

@Service("ContractService")
public class ContractServiceImpl implements ContractService {
	@Resource(name = "ContractDAO")
	private ContractDAO ContractDAO;
	
	@Override
	public void trmTemplate1(ContractVO param) throws Exception {
		ContractDAO.trmTemplate1(param);
	}
	
	@Override
	public void trmTemplateWork(ContractVO param) throws Exception {
		ContractDAO.trmTemplateWork(param);
	}
	
	@Override
	   public void trmTemplateStWork(ContractVO param) throws Exception {
	      ContractDAO.trmTemplateStWork(param);
	   }

	
	@Override
	public void trmTemplateEnd(ContractVO param) throws Exception {
		ContractDAO.trmTemplateEnd(param);
	}
	
	@Override
	public void trmTemplateBenefit(ContractVO param) throws Exception {
		ContractDAO.trmTemplateBenefit(param);
	}
	
	@Override
	public void  trmTemplate2(ContractVO param) throws Exception{
		ContractDAO.trmTemplate2(param);
	}
	
	@Override
	   public void  trmTemplate3(ContractVO param) throws Exception{
	      ContractDAO.trmTemplate3(param);
	   }
	   
	   @Override
	   public void  trmTemplate4(ContractVO param) throws Exception{
	      ContractDAO.trmTemplate4(param);
	   }

	
	
	
}

