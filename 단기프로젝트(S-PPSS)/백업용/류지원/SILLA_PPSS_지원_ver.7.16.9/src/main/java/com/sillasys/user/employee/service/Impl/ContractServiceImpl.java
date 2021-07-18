package com.sillasys.user.employee.service.Impl;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import com.sillasys.user.employee.dao.ContractDAO;
import com.sillasys.user.employee.service.ContractService;
import com.sillasys.user.employee.vo.ContractVO;

@Service("ContractService")
public class ContractServiceImpl implements ContractService {
	@Resource(name = "ContractDAO")
	private ContractDAO ContractDAO;
	
	@Override
	public void trmTemplate1(ContractVO param) throws Exception {
		ContractDAO.trmTemplate1(param);
	}
}

