package com.sillasys.contract.service;

import com.sillasys.contract.vo.Contract_1_VO;
import com.sillasys.contract.vo.Contract_2_VO;
import com.sillasys.contract.vo.Contract_3_VO;
import com.sillasys.contract.vo.Contract_4_VO;

public interface ContractService {
	public void trmTemplate1(Contract_1_VO param) throws Exception;
	public void trmTemplate2(Contract_2_VO param) throws Exception;
	public void trmTemplate3(Contract_3_VO param) throws Exception;
	public void trmTemplate4(Contract_4_VO param) throws Exception;
}
