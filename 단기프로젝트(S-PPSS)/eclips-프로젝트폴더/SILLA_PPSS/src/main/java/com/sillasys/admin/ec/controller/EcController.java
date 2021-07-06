package com.sillasys.admin.ec.controller;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.sillasys.admin.ec.service.EcService;
import com.sillasys.admin.ec.vo.EcVO;

import egovframework.rte.psl.dataaccess.util.EgovMap;


@Controller
public class EcController {

	@Resource(name = "ecService")
	private EcService ecService;
	
	

	@RequestMapping(value = "/admin/ec/regist.do", method = RequestMethod.GET)
	public String goRegist(HttpServletRequest request) {
		HttpSession hs = request.getSession();
		EgovMap loginAdmin = (EgovMap) hs.getAttribute("loginAdmin");
		
		if(loginAdmin == null) {//나중에 관리자 로그인 시스템을 만들어서 그리로 보내야합니다. *관리자와 근로자는 로그인시스템을 달리 해야합니다.*
			return "redirect:/admin/login.do";
		}
		return "com/sillasys/admin/ec/regist";
	}
	
	@RequestMapping(value = "/admin/ec/regist.do", method = RequestMethod.POST)
	public String doRegist(@ModelAttribute EcVO vo, HttpServletRequest request) throws Exception{
		HttpSession hs = request.getSession();
		EgovMap loginAdmin = (EgovMap) hs.getAttribute("loginAdmin");
		System.out.println("loginAdmin : "+loginAdmin);
		if(loginAdmin == null) { // 로그인 안하고 등록
			return "redirect:/admin/login.do";
		} else { //로그인 한 사용자
			String companyNm = loginAdmin.get("companyNm").toString();
			String employerNm = loginAdmin.get("id").toString();
			vo.setCompanyNm(companyNm);
			vo.setEmployerNm(employerNm);
		}
		System.out.println("param : "+vo);
		ecService.insertEcInfo(vo);
		
		
		
		
		System.out.println("vo : "+vo);
		
		
		
		
		return "";
	}
	
}
