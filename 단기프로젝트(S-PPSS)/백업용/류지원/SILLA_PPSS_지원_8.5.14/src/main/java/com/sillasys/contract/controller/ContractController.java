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
import com.sillasys.member.vo.MemberVO;

import egovframework.rte.psl.dataaccess.util.EgovMap;


@Controller
public class ContractController {
	
	@Resource(name = "contractService")
	private ContractService contractService;

		/*로그인체크 메서드*/
	public boolean checkLogin(HttpServletRequest request) {
		HttpSession hs = request.getSession();
		EgovMap loginAdmin = (EgovMap) hs.getAttribute("loginAdmin");  
		if(loginAdmin == null)
			return false;
		System.out.println("로그인 확인");
		return true;
	}
	/*Get go맵핑*/
		/*계약서관리 */
		@RequestMapping(value="/page/contract.do", method = RequestMethod.GET)
		public String goContractPage(@ModelAttribute ContractVO vo,HttpServletRequest request, ModelMap model ) throws Exception{
			System.out.println("\n--------------------------------------------------------------");
			System.out.println("＆contract.do : get방식 실행됨＆");
			
			if(!checkLogin(request))
				return "redirect:/admin/login.do";
			System.out.println("--------------------------------------------------------------\n");
			return "com/sillasys/page/contract";
		}
			
		/*양식보관함 */
		@RequestMapping(value="/page/contract/form.do", method = RequestMethod.GET)
		public String goFormPage(@ModelAttribute ContractVO vo,HttpServletRequest request, ModelMap model ) throws Exception{
			System.out.println("\n--------------------------------------------------------------");
			System.out.println("＆form.do : get방식 실행됨＆");
			if(!checkLogin(request))
				return "redirect:/admin/login.do";
			System.out.println("--------------------------------------------------------------\n");
			return "com/sillasys/page/contract/form";
		}
				
		/*계약서목록 */
		@RequestMapping(value="/page/contract/contlist.do", method = RequestMethod.GET)
		public String goContlistPage(@ModelAttribute ContractVO vo,HttpServletRequest request, ModelMap model ) throws Exception{
			System.out.println("\n--------------------------------------------------------------");
			System.out.println("＆contlist.do : get방식 실행됨＆");
			if(!checkLogin(request))
				return "redirect:/admin/login.do";
			System.out.println("--------------------------------------------------------------\n");
			return "com/sillasys/page/contract/contlist";
		}
		
		
		/*양식작성  */
		@RequestMapping(value="/page/contract/template1.do", method = RequestMethod.GET)
		public String goWriteTemplate1Page(@ModelAttribute ContractVO vo,HttpServletRequest request, ModelMap model ) throws Exception{
			System.out.println("\n--------------------------------------------------------------");
			System.out.println("＆template.do : get방식 실행됨＆");
			HttpSession hs = request.getSession();
			EgovMap loginAdmin = (EgovMap) hs.getAttribute("loginAdmin");  
			if(loginAdmin == null)
				return "redirect:/admin/login.do";
			
			
			
			System.out.println("--------------------------------------------------------------\n");
		
			return "com/sillasys/page/contract/template1";
		}
				
		
		
		/*view */
		@RequestMapping(value="/page/contract/view.do", method = RequestMethod.GET)
		public String goViewPage(@ModelAttribute ContractVO vo,HttpServletRequest request, ModelMap model ) throws Exception{
			System.out.println("\n--------------------------------------------------------------");
			System.out.println("＆view.do : get방식 실행됨＆");
			HttpSession hs = request.getSession();
			EgovMap result = null;
			
			EgovMap loginAdmin = (EgovMap) hs.getAttribute("loginAdmin");  
			if(loginAdmin == null)
				return "redirect:/admin/login.do";
			
			result = contractService.viewContract(vo);
			//System.out.println(result.toString());z
			
			System.out.println("--------------------------------------------------------------\n");
			model.addAttribute("result", result);
			return "com/sillasys/page/contract/view";
		}
		
		/*mail */
		@RequestMapping(value="/page/contract/mail/mailform.do", method = RequestMethod.GET)
		public String goMail(@ModelAttribute ContractVO vo,HttpServletRequest request, ModelMap model ) throws Exception{
			System.out.println("\n--------------------------------------------------------------");
			System.out.println("＆mailform.do : get방식 실행됨＆");
			HttpSession hs = request.getSession();
			EgovMap result = null;
			
			EgovMap loginAdmin = (EgovMap) hs.getAttribute("loginAdmin");  
			if(loginAdmin == null)
				return "redirect:/admin/login.do";
			return "com/sillasys/page/contract/mail/mailform";
		}
	/*GET go페이지 이동 맵핑 구간 끝 */
	
		/*POST do맵핑*/               
		@RequestMapping(value="/page/contract/template1.do", method = RequestMethod.POST)
		public String insertTemplate(@ModelAttribute ContractVO vo,HttpServletRequest request, ModelMap model ) throws Exception{
			System.out.println("\n--------------------------------------------------------------");
			System.out.println("＆template1.do : POST방식 실행됨＆");
			HttpSession hs = request.getSession();
			EgovMap loginAdmin = (EgovMap) hs.getAttribute("loginAdmin"); 
			if(loginAdmin == null)
				return "redirect:/admin/login.do";
			
			
			System.out.println("서비스 실행 전");
			contractService.insertTemplate(vo);
	
			System.out.println("Model contentList addAttribute Set success");
			
			System.out.println("--------------------------------------------------------------\n");
			
			return "com/sillasys/page/contract/template1";
		}
		
		@RequestMapping(value="/page/contract/mail/sendmail.do", method = RequestMethod.POST)
		public String doMail(@ModelAttribute ContractVO vo,HttpServletRequest request, ModelMap model ) throws Exception{
			System.out.println("\n--------------------------------------------------------------");
			System.out.println("＆sendmail.do : POST방식 실행됨＆");
			HttpSession hs = request.getSession();
			EgovMap loginAdmin = (EgovMap) hs.getAttribute("loginAdmin"); 
			if(loginAdmin == null)
				return "redirect:/admin/login.do";
			
			return "com/sillasys/page/contract/mail/sendmail";
		}
	
		
}