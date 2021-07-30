 package com.sillasys.member.controller;


import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.sillasys.member.service.MemberService;
import com.sillasys.member.vo.MemberVO;

import egovframework.rte.psl.dataaccess.util.EgovMap;


@Controller
public class MemberController {
	
	@Resource(name = "memberService")
	private MemberService memberService;

	/*Get go맵핑*/
	
		//
		@RequestMapping(value = "/page/member.do", method = RequestMethod.GET)
		public String goMember(HttpServletRequest request) throws Exception {
			HttpSession hs = request.getSession();
			EgovMap loginAdmin = (EgovMap) hs.getAttribute("loginAdmin");
			if(loginAdmin == null)
				return "redirect:/admin/login.do";
			return "com/sillasys/page/member";
		}
			
			
				
				
	/*GET go페이지 이동 맵핑 구간 끝 */
	/*POST do맵핑*/
}