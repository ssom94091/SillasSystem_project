package com.sillasys.user.employee.service;

import com.sillasys.user.employee.vo.ContractVO;
import com.sillasys.user.employee.vo.ContractWorkTimeVO;
import com.sillasys.user.employee.vo.ContractEndTimeVO;
import com.sillasys.user.employee.vo.ContractBenefitVO;

public interface ContractService {
	public void trmTemplate1(ContractVO param) throws Exception;
	public void trmTemplateWork(ContractVO param) throws Exception;
	public void trmTemplateStWork(ContractVO param) throws Exception;
	public void trmTemplateEnd(ContractVO param) throws Exception;
	public void trmTemplateBenefit(ContractVO param) throws Exception;
	
	public void trmTemplate2(ContractVO param) throws Exception;
	public void trmTemplate3(ContractVO param) throws Exception;
	public void trmTemplate4(ContractVO param) throws Exception;
	
	public void trmModifyTemplate(ContractVO param) throws Exception;
}
