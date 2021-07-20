package com.sillasys.user.employee.service;

import com.sillasys.user.employee.vo.ContractVO;
import com.sillasys.user.employee.vo.ContractWorkTimeVO;
import com.sillasys.user.employee.vo.ContractEndTimeVO;
import com.sillasys.user.employee.vo.ContractBenefitVO;

public interface ContractService {
	public void trmTemplate1(ContractVO param) throws Exception;
	public void trmTemplate1(ContractWorkTimeVO param) throws Exception;
	public void trmTemplate1(ContractEndTimeVO param) throws Exception;
	public void trmTemplate1(ContractBenefitVO param) throws Exception;
}
