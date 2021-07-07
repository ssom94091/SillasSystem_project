package com.sillasys.admin.employer.controller;

import javax.annotation.Resource;
import javax.security.auth.message.callback.PrivateKeyCallback.Request;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.sillasys.admin.employer.service.AdminService;
import com.sillasys.admin.employer.vo.AdminVO;

import egovframework.rte.psl.dataaccess.util.EgovMap;

@Controller
public class AdminController {
	
	@Resource(name = "adminService")
	private AdminService adminService;
	
	
	
	
	@RequestMapping(value = "/admin/login.do", method = RequestMethod.GET)
	public String goLogin(HttpServletRequest request) {
		
		HttpSession hs = request.getSession();
		EgovMap loginAdmin = (EgovMap) hs.getAttribute("loginAdmin");
		
		if(loginAdmin != null)
			return "redirect:/admin/index.do";
		
		
		return "com/sillasys/admin/login";
		
	}
	
	@RequestMapping(value = "/admin/login.do", method = RequestMethod.POST)
	public String doLogin(@ModelAttribute AdminVO vo, HttpServletRequest request, Model model) throws Exception {
		EgovMap loginAdmin =  adminService.selectAdmin(vo);
		
		String url = "/admin/login.do";
		String msg = "로그인에 실패했습니다.";
		
		if(loginAdmin != null) {
			HttpSession hs = request.getSession();
			hs.setAttribute("loginAdmin", loginAdmin);
			
			url = "/admin/index.do";
			msg = "로그인에 성공했습니다.";
			
		}
		model.addAttribute("msg", msg);
		model.addAttribute("url", url);
		
		return "com/sillasys/common/common";
	}
	
	
	@RequestMapping(value = "/admin/index.do", method = RequestMethod.GET)
	public String goIndex(HttpServletRequest request) throws Exception{
		HttpSession hs = request.getSession();
		EgovMap loginAdmin = (EgovMap) hs.getAttribute("loginAdmin");
		
		if(loginAdmin == null)
			return "redirect:/admin/login.do";
		
		
		
		return "com/sillasys/admin/index";
	}
	
	
	
	
	
	

}
