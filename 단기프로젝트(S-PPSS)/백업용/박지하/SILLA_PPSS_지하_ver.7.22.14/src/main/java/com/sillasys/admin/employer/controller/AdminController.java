 package com.sillasys.admin.employer.controller;

import java.util.List;

import javax.annotation.Resource;
import javax.security.auth.message.callback.PrivateKeyCallback.Request;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.sillasys.admin.employer.service.AdminService;
import com.sillasys.admin.employer.vo.AdminVO;
import com.sillasys.contract.service.ContractService;

import egovframework.rte.psl.dataaccess.util.EgovMap;

@Controller
public class AdminController {
	
	@Resource(name = "adminService")
	private AdminService adminService;

	/* 로그인 */
	@RequestMapping(value = "/admin/login.do", method = RequestMethod.POST)
	public String doLogin(@ModelAttribute AdminVO vo, HttpServletRequest request, Model model) throws Exception {
		EgovMap loginAdmin =  adminService.selectAdmin(vo);
	
		String url = "/admin/login.do";
		String msg = "로그인에 실패했습니다.";
		System.out.println("※※※관리자계정 접속시도※※※ \n 입력 된 아이디 : "+vo.getAdmin_id()+"\n 입력 된 비밀번호 : "+vo.getAdmin_pw()+"\n＆＆접속 시도한 ip :"+request.getRemoteAddr()+" ＆＆\n");
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
	
	/* 로그아웃 */
		@RequestMapping(value = "admin/logout.do", method = RequestMethod.GET)
		public String doLogout(HttpServletRequest request, Model model) {
			HttpSession hs = request.getSession();       
			EgovMap loginAdmin = (EgovMap) hs.getAttribute("loginAdmin");   
			
			/*세션에 저장된 값의 키값들을 불러온다. (db의 컬럼내용) loginAdmin.keySet(),   .get을 통하여 해당 키의 값을 가지고온다. */ 
			System.out.println(loginAdmin.keyList()+"\n");
			System.out.println("※※※로그아웃 시도※※※ \n 시도 한 아이디 : "+loginAdmin.get("adminId")+"\n＆＆로그아웃 시도 ip :"+request.getRemoteAddr()+" ＆＆\n");
			hs.invalidate();	/*세션으로부터 저장된 값들을 제거한다. */
			model.addAttribute("msg", "로그아웃에 성공했습니다.");
			model.addAttribute("url", "/admin/login.do");
			
			return "com/sillasys/common/common";
		} 
		
		/*
		@RequestMapping(value="ec/list.do")
		public String selectMainList(@ModelAttribute("paramMap")EgovMap paramMap, HttpServletResponse response, ModelMap model) throws Exception{
			
			List<EgovMap> contentList = ContractService.selectList(paramMap);
			
			model.addAttribute("contentList", contentList);
			System.out.println(contentList);
			return "com/sillasys/contract/list";
		}*/
	
		/*페이지 이동 맵핑 구간 시작*/
		
				//관리자로그인페이지 이동
				@RequestMapping(value = "/admin/login.do", method = RequestMethod.GET)
				public String goLogin(HttpServletRequest request) {
		
					HttpSession hs = request.getSession();
					EgovMap loginAdmin = (EgovMap) hs.getAttribute("loginAdmin");
		
					if(loginAdmin != null)
						return "redirect:/admin/main.do";
		
					return "com/sillasys/admin/login";
				}
				//로그인 시 메인페이지 이동
				@RequestMapping(value = "/admin/main.do", method = RequestMethod.GET)
				public String goMain(HttpServletRequest request) throws Exception {
					HttpSession hs = request.getSession();
					EgovMap loginAdmin = (EgovMap) hs.getAttribute("loginAdmin");
		
					if(loginAdmin == null)
						return "redirect:/admin/login.do";
		
					return "com/sillasys/admin/main";
				}
				//근로계약서 목록보기페이지 이동
				@RequestMapping(value = "/contract/list.do" , method = RequestMethod.GET)
				public String goList() {
					return "com/sillasys/contract/list";
				}
				//근로계약서 양식작성페이지 이동
				@RequestMapping(value = "/contract/content.do" , method = RequestMethod.GET)
				public String goContent() {
					return "com/sillasys/contract/content";
				}
				//근로계약서 양식보기페이지 이동
				@RequestMapping(value = "/contract/sample.do" , method = RequestMethod.GET)
				public String goSample() {
					return "com/sillasys/contract/sample";
				}
				//메인페이지 이동
				@RequestMapping(value = "/index.do" , method = RequestMethod.GET)
				public String goHome() {
				return "com/sillasys/index";
					
				}
			
			/*페이지 이동 맵핑 구간 끝 */
}