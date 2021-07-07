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
			return "redirect:/admin/main.do";
		
		return "com/sillasys/admin/login";
	}
	
	
	@RequestMapping(value = "/admin/main.do", method = RequestMethod.GET)
	public String goMain(HttpServletRequest request) throws Exception {
		HttpSession hs = request.getSession();
		EgovMap loginAdmin = (EgovMap) hs.getAttribute("loginAdmin");
		
		if(loginAdmin == null)
			return "redirect:/admin/login.do";
		
		return "com/sillasys/admin/main";
	}
	
	//메인 페이지로 이동
		@RequestMapping(value = "/index.do" , method = RequestMethod.GET)
		public String goHome() {
			return "com/sillasys/index";
		}
	
	@RequestMapping(value = "/admin/login.do", method = RequestMethod.POST)
	public String doLogin(@ModelAttribute AdminVO vo, HttpServletRequest request, Model model) throws Exception {
		EgovMap loginAdmin =  adminService.selectAdmin(vo);
		
		String url = "/admin/login.do";
		String msg = "로그인에 실패했습니다.";
		
		if(loginAdmin != null) {
			HttpSession hs = request.getSession();
			hs.setAttribute("loginAdmin", loginAdmin);
			
			url = "/admin/main.do";
			msg = "로그인에 성공했습니다.";
			
		}
		model.addAttribute("msg", msg);
		model.addAttribute("url", url);
		
		return "com/sillasys/common/common";
	}
	
	
	//로그아웃
		@RequestMapping(value = "admin/logout.do", method = RequestMethod.GET)
		public String doLogout(HttpServletRequest request, Model model) {
			HttpSession hs = request.getSession();
			
			hs.invalidate();
			model.addAttribute("msg", "로그아웃에 성공했습니다.");
			model.addAttribute("url", "/admin/login.do");
			
			return "com/sillasys/common/common";
		}
		

	
	
	
	
	
	

}