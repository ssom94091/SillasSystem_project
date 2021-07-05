package com.sillasys.user.employee.controller;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.sillasys.user.employee.service.UserService;
import com.sillasys.user.employee.vo.UserVO;

import egovframework.rte.psl.dataaccess.util.EgovMap;

@Controller
public class UserController {
	
	@Resource(name = "userService")
	private UserService userService;
	
	//로그인페이지 이동
	@RequestMapping(value = "/user/login.do" , method = RequestMethod.GET)
	public String goLogin(HttpServletRequest request) throws Exception{
		HttpSession hs = request.getSession();
		EgovMap loginUser = (EgovMap) hs.getAttribute("loginUser");
		
		if(loginUser != null) 
			return "redirect:/user/index.do";//주소
		return "com/sillasys/user/login";
	}
	
	@RequestMapping(value = "/user/join.do", method = RequestMethod.GET)
	public String goJoin() {
		return "com/sillasys/user/join";
	}
	
	@RequestMapping(value = "/user/join.do", method = RequestMethod.POST)
	public String regist(@ModelAttribute UserVO vo) throws Exception{
		
		userService.doJoin(vo);
		return "com/sillasys/user/login";
	}
	
	
	@RequestMapping(value = "/user/index.do" , method = RequestMethod.GET)
	public String goIdx() {
		return "com/sillasys/user/index";
	}
	
	@RequestMapping(value = "/user/login.do", method = RequestMethod.POST)
	public String doLogin(@ModelAttribute UserVO vo, Model model, HttpServletRequest request) throws Exception {
		
		EgovMap loginUser = userService.selectLoginUser(vo);
		
		String msg = "아이디 또는 패스워드가 일치하지 않습니다.";
		String url = "/user/login.do";
		
		if(loginUser != null) { 
			 msg = "로그인에 성공했습니다.";
			 url = "/user/index.do";
			 
	
			 
			 //session에 로그인유저 정보 유지
			 HttpSession hs = request.getSession();
			 hs.setAttribute("loginUser", loginUser);
			 
		} 
		
		model.addAttribute("msg", msg);
		model.addAttribute("url", url);
		
		return "com/sillasys/common/common";
	}
	
	
	@RequestMapping(value = "user/logout.do", method = RequestMethod.GET)
	public String doLogout(HttpServletRequest request, Model model) {
		HttpSession hs = request.getSession();
		
		hs.invalidate();
		model.addAttribute("msg", "로그아웃에 성공했습니다.");
		model.addAttribute("url", "/user/index.do");
		
		return "com/sillasys/common/common";
	}
}
