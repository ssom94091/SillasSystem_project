 package com.sillasys.contract.controller;


import java.util.ArrayList;
import java.util.Calendar;
import java.util.List;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.sillasys.contract.service.serviceimpl.ContractService;
import com.sillasys.contract.vo.ContractVO;

import egovframework.rte.psl.dataaccess.util.EgovMap;


@Controller
public class ContractController {
	
	@Resource(name = "contractService")
	private ContractService contractService;

	/*Get go맵핑*/
		/*계약서관리 */
		@RequestMapping(value="/page/contract.do", method = RequestMethod.GET)
		public String goContractPage(@ModelAttribute ContractVO vo,HttpServletRequest request, ModelMap model ) throws Exception{
			System.out.println("\n--------------------------------------------------------------");
			System.out.println("＆contract.do : get방식 실행됨＆");
			HttpSession hs = request.getSession();
			EgovMap loginAdmin = (EgovMap) hs.getAttribute("loginAdmin");  
			if(loginAdmin == null)
				return "redirect:/admin/login.do";
			
			
			
			System.out.println("--------------------------------------------------------------\n");
		
			return "com/sillasys/page/contract";
		}
			
		/*양식보관함 */
		@RequestMapping(value="/sub/contract/form.do", method = RequestMethod.GET)
		public String goFormPage(@ModelAttribute ContractVO vo,HttpServletRequest request, ModelMap model ) throws Exception{
			System.out.println("\n--------------------------------------------------------------");
			System.out.println("＆form.do : get방식 실행됨＆");
			HttpSession hs = request.getSession();
			EgovMap loginAdmin = (EgovMap) hs.getAttribute("loginAdmin");  
			if(loginAdmin == null)
				return "redirect:/admin/login.do";
			
			
			
			System.out.println("--------------------------------------------------------------\n");
		
			return "com/sillasys/sub/contract/form";
		}
				
		/*양식보관함 */
		@RequestMapping(value="/sub/contract/contlist.do", method = RequestMethod.GET)
		public String goContlistPage(@ModelAttribute ContractVO vo,HttpServletRequest request, ModelMap model ) throws Exception{
			System.out.println("\n--------------------------------------------------------------");
			System.out.println("＆contlist.do : get방식 실행됨＆");
			HttpSession hs = request.getSession();
			EgovMap loginAdmin = (EgovMap) hs.getAttribute("loginAdmin");  
			if(loginAdmin == null)
				return "redirect:/admin/login.do";
			
			
			
			System.out.println("--------------------------------------------------------------\n");
		
			return "com/sillasys/sub/contract/contlist";
		}
		
		/* 작성페이지 */
		@RequestMapping(value = "/sub/contract/write.do", method = RequestMethod.GET)
		public String goWritePage(@ModelAttribute ContractVO vo, HttpServletRequest request, ModelMap model)
				throws Exception {
			System.out.println("\n--------------------------------------------------------------");
			System.out.println("＆write.do : get방식 실행됨＆");
			HttpSession hs = request.getSession();
			EgovMap loginAdmin = (EgovMap) hs.getAttribute("loginAdmin");
			if (loginAdmin == null)
				return "redirect:/admin/login.do";

			System.out.println("--------------------------------------------------------------\n");

			return "com/sillasys/sub/contract/write";
		}
				
	/*GET go페이지 이동 맵핑 구간 끝 */
	/*POST do맵핑*/
		
}