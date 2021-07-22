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
	
	/*
	@RequestMapping(value = "/ec/regist.do", method = RequestMethod.POST)
	public String doRegist(@ModelAttribute ContractVO vo, HttpServletRequest request) throws Exception{
		HttpSession hs = request.getSession();
		EgovMap loginAdmin = (EgovMap) hs.getAttribute("loginAdmin");
		System.out.println("loginAdmin : "+loginAdmin);
		if(loginAdmin == null) { // 로그인 안하고 등록
			return "redirect:/login.do";
		} else { //로그인 한 사용자
			String companyNm = loginAdmin.get("companyNm").toString();
			String employerNm = loginAdmin.get("id").toString();
		}
		System.out.println("param : "+vo);
		
		System.out.println("vo : "+vo);
		
		
		return "";
	}
		*/
	
	@RequestMapping(value = "/contract/template/contract1.do", method = RequestMethod.POST)
	public String trmTemplate(@ModelAttribute ContractVO vo, @ModelAttribute ContractWorkVO vo2,
			 @ModelAttribute ContractEndVO vo3, @ModelAttribute ContractBenefitVO vo4) throws Exception {

		contractService.trmTemplate(vo);
		contractService.trmTemplateWork(vo2);
		contractService.trmTemplateEnd(vo3);
		//
		
		if(vo4.getBenefit_check()==1) {
			contractService.trmTemplateBenefit(vo4);
		}

		return "com/sillasys/contract/template/contract1";
	}

	// 근로계약서( 표준근로계약서 - 기간)
	@RequestMapping(value = "/contract/template/contract1.do", method = RequestMethod.GET)
	public String goContract() {
		return "com/sillasys/contract/template/contract1";
	}
	
}