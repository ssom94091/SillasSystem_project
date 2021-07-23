 package com.sillasys.contract.controller;

import java.util.List;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import com.sillasys.contract.service.ContractService;
import com.sillasys.contract.vo.ContractBenefitVO;
import com.sillasys.contract.vo.ContractEndVO;
import com.sillasys.contract.vo.ContractVO;
import com.sillasys.contract.vo.ContractWorkVO;

import egovframework.rte.psl.dataaccess.util.EgovMap;


@Controller
public class ContractController {

	@Resource(name = "contractService")
	private ContractService contractService;

	// 근로계약서( 표준근로계약서 - 기간)
	@RequestMapping(value = "/contract/template/contract1.do", method = RequestMethod.GET)
	public String goContract() {
		return "com/sillasys/contract/template/contract1";
	}

	// 근로계약서( 표준근로계약서 - 기간없음)
	@RequestMapping(value = "/contract/template/contract2.do", method = RequestMethod.GET)
	public String goContract2() {
		return "com/sillasys/contract/template/contract2";
	}

	// 근로계약서( 단기간근로계약서 - 기간)
	@RequestMapping(value = "/contract/template/contract3.do", method = RequestMethod.GET)
	public String goContract3() {
		return "com/sillasys/contract/template/contract3";
	}

	// 근로계약서( 단기간근로계약서 - 기간없음)
	@RequestMapping(value = "/contract/template/contract4.do", method = RequestMethod.GET)
	public String goContract4() {
		return "com/sillasys/contract/template/contract4";
	}
	
	// 근로계약서 DB전송( 표준근로계약서 - 기간)
	@RequestMapping(value = "/contract/template/contract1.do", method = RequestMethod.POST)
	public String trmTemplate(@ModelAttribute ContractVO vo, @ModelAttribute ContractWorkVO vo2,
			@ModelAttribute ContractEndVO vo3, @ModelAttribute ContractBenefitVO vo4) throws Exception {

		contractService.trmTemplate(vo);
		contractService.trmTemplateWork(vo2);
		contractService.trmTemplateEnd(vo3);
		if (vo4.getBenefit_check() == 1) {
			contractService.trmTemplateBenefit(vo4);
		}

		return "com/sillasys/contract/template/contract1";
	}

	// 근로계약서 DB전송( 표준근로계약서 - 기간없음)
	@RequestMapping(value = "/contract/template/contract2.do", method = RequestMethod.POST)
	public String trmTemplate2(@ModelAttribute ContractVO vo, @ModelAttribute ContractWorkVO vo2,
			@ModelAttribute ContractEndVO vo3, @ModelAttribute ContractBenefitVO vo4) throws Exception {

		contractService.trmTemplate(vo);
		contractService.trmTemplateWork(vo2);
		if (vo4.getBenefit_check() == 1) {
			contractService.trmTemplateBenefit(vo4);
		}

		return "com/sillasys/contract/template/contract2";
	}
	
	//근로계약서 목록보기페이지 이동
	@RequestMapping(value = "/contract/list.do" , method = RequestMethod.GET)
	public String goList() {
		return "com/sillasys/contract/list";
	}
	
	// 근로계약서 DB삭제
	@RequestMapping(value = "/contract/list.do", method = RequestMethod.POST)
	public String delete(@ModelAttribute ContractVO vo, @ModelAttribute ContractWorkVO vo2,
			@ModelAttribute ContractEndVO vo3, @ModelAttribute ContractBenefitVO vo4) throws Exception {
	
		contractService.delTemplate(vo);
		contractService.delTemplateWork(vo2);
		System.out.println(vo.getContract_pk());
		if (vo3.getEnd_year() != null && vo3.getEnd_month() != null && vo3.getEnd_day()!= null) {
			contractService.delTemplateEnd(vo3);
		}
		if (vo4.getBenefit_check() == 1) {
			contractService.delTemplateBenefit(vo4);
		}

		return "com/sillasys/contract/list";
	}
	
	
}