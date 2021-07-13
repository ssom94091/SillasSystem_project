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

	
	
	
	//회원가입
	@RequestMapping(value = "/user/join.do", method = RequestMethod.POST)
	public String regist(@ModelAttribute UserVO vo) throws Exception{
		
		userService.doJoin(vo);
				
		return "com/sillasys/user/login";
	}
	
	

	
	//로그인
	@RequestMapping(value = "/user/login.do", method = RequestMethod.POST)
	public String doLogin(@ModelAttribute UserVO vo, Model model, HttpServletRequest request) throws Exception {
		
		EgovMap loginUser = userService.selectLoginUser(vo);
		
		System.out.println("※※※유저계정 접속시도※※※ \n 입력 된 아이디 : "+vo.getUser_id()+"\n 입력 된 비밀번호 : "+vo.getUser_pw()+"\n＆＆접속 시도한 ip :"+request.getRemoteAddr()+" ＆＆\n");
		String msg = "아이디 또는 패스워드가 일치하지 않습니다.";
		String url = "/user/login.do";
		
		if(loginUser != null) { 
			 msg = "로그인에 성공했습니다.";
			 url = "/user/index.do";
			 
	
			 
			 //session에 로그인유저 정보 유지
			 HttpSession hs = request.getSession();
			 hs.setAttribute("loginUser", loginUser);
			 System.out.println("접속이 완료되었습니다.(세션값 저장완료)\n");
			 
		} 
		
		model.addAttribute("msg", msg);
		model.addAttribute("url", url);
		
		return "com/sillasys/common/common";
	}
	
	
	//로그아웃
	@RequestMapping(value = "user/logout.do", method = RequestMethod.GET)
	public String doLogout(HttpServletRequest request, Model model) {
		HttpSession hs = request.getSession();
		EgovMap loginUser = (EgovMap) hs.getAttribute("loginUser");
		System.out.println("※※※로그아웃 시도※※※ \n 시도 한 아이디 : "+loginUser.get("userId")+"\n＆＆로그아웃 시도 ip :"+request.getRemoteAddr()+" ＆＆\n");
		
		hs.invalidate();
		model.addAttribute("msg", "로그아웃에 성공했습니다.");
		model.addAttribute("url", "/user/login.do");
		
		return "com/sillasys/common/common";
	}
	
	
	/*페이지 이동 맵핑 구간 시작*/
	
			//로그인페이지 이동
				@RequestMapping(value = "/user/login.do" , method = RequestMethod.GET)
				public String goLogin(HttpServletRequest request) throws Exception{
					HttpSession hs = request.getSession();
					EgovMap loginUser = (EgovMap) hs.getAttribute("loginUser");
					if(loginUser != null) 
						return "redirect:/user/index.do";//주소
					return "com/sillasys/user/login";
				}
			//회원가입페이지 이동
				@RequestMapping(value = "/user/join.do", method = RequestMethod.GET)
				public String goJoin() {
					return "com/sillasys/user/join";
				}
			//메인 페이지로 이동
				@RequestMapping(value = "/user/index.do" , method = RequestMethod.GET)
				public String goIdx() {
					return "com/sillasys/user/index";
				}
			//양식페이지로 이동
				@RequestMapping(value = "/user/write.do" , method = RequestMethod.GET)
				public String goWrite() {
					return "com/sillasys/user/write";
				}
				
			//
				@RequestMapping(value = "/ec/user/contract.do" , method = RequestMethod.GET)
				public String goContract() {
					return "com/sillasys/ec/user/contract";
				}
	 /*페이지 이동 맵핑 구간 끝*/
		
}