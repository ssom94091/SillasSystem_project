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
	public void trmTemplate1(ContractWorkTimeVO param) throws Exception {
		ContractDAO.trmTemplate1(param);
	}
	@Override
	public void trmTemplate1(ContractEndTimeVO param) throws Exception {
		ContractDAO.trmTemplate1(param);
	}
	@Override
	public void trmTemplate1(ContractBenefitVO param) throws Exception {
		ContractDAO.trmTemplate1(param);
	}
}

