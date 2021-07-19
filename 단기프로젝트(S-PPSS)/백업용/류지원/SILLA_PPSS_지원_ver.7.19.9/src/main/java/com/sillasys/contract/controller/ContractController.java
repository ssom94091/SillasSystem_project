package com.sillasys.contract.controller;

import javax.annotation.Resource;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import com.sillasys.contract.service.ContractService;

import com.sillasys.contract.vo.Contract_1_VO;
import com.sillasys.contract.vo.Contract_2_VO;
import com.sillasys.contract.vo.Contract_3_VO;
import com.sillasys.contract.vo.Contract_4_VO;

@Controller
public class ContractController {
	@Resource(name = "contractService")
	private ContractService contractService;

	// 계약서1 DB 전송
	@RequestMapping(value = "/ec/template/contract1.do", method = RequestMethod.POST)
	public String trmTemplate1(@ModelAttribute Contract_1_VO vo) throws Exception {
		contractService.trmTemplate1(vo);
		return "com/sillasys/ec/template/contract1";
	}

	// 계약서2 DB 전송
	@RequestMapping(value = "/ec/template/contract2.do", method = RequestMethod.POST)
	public String trmTemplate2(@ModelAttribute Contract_2_VO vo) throws Exception {
		contractService.trmTemplate2(vo);
		return "com/sillasys/ec/template/contract2";
	}

	// 계약서3 DB 전송
	@RequestMapping(value = "/ec/template/contract3.do", method = RequestMethod.POST)
	public String trmTemplate3(@ModelAttribute Contract_3_VO vo) throws Exception {
		contractService.trmTemplate3(vo);
		return "com/sillasys/ec/template/contract3";
	}

	// 계약서4 DB 전송
	@RequestMapping(value = "/ec/template/contract4.do", method = RequestMethod.POST)
	public String trmTemplate4(@ModelAttribute Contract_4_VO vo) throws Exception {
		contractService.trmTemplate4(vo);
		return "com/sillasys/ec/template/contract4";
	}
}
