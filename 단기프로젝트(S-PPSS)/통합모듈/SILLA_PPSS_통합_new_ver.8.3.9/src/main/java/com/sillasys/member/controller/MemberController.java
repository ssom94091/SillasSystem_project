 package com.sillasys.member.controller;


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

import com.sillasys.member.service.MemberService;
import com.sillasys.member.vo.MemberVO;

import egovframework.rte.psl.dataaccess.util.EgovMap;


@Controller
public class MemberController {
	
	@Resource(name = "memberService")
	private MemberService memberService;

	/*Get go맵핑*/
		/*직원목록 */
		@RequestMapping(value="/page/member.do", method = RequestMethod.GET)
		public String selectContractList(@ModelAttribute MemberVO vo,HttpServletRequest request, ModelMap model ) throws Exception{
			System.out.println("\n--------------------------------------------------------------");
			System.out.println("＆member.do : get방식 실행됨＆");
			HttpSession hs = request.getSession();
			EgovMap loginAdmin = (EgovMap) hs.getAttribute("loginAdmin");  
			ArrayList<String> list = new ArrayList<String>();
			ArrayList<String> age = new ArrayList<String>();
			if(loginAdmin == null)
				return "redirect:/admin/login.do";
			
			
			System.out.println("서비스 실행 전");
			List<EgovMap> contentList = memberService.selectMemberList(vo);
			System.out.println("서비스 실행 후");
			System.out.println("레코드 수 :"+contentList.size());
			System.out.println(contentList.toString());
			if(contentList != null) {
			System.out.println("데이터 set 성공");
			}
			System.out.println(contentList.get(0).keyList());
			
			for(int i=0;i<contentList.size();i++) {
				
				String rear = (String) contentList.get(i).get("memberResnumRear");
				String aage = (String) contentList.get(i).get("memberResnumFront");
				String first = ((String) rear).substring(0,1);
				int year = Calendar.getInstance().get(Calendar.YEAR);
				rear= first.concat("******");
				
				list.add(rear);
				age.add(aage);
				
			}
			System.out.println();
			model.addAttribute("list",list);
			model.addAttribute("contentList", contentList);	
			model.addAttribute("contractSize",contentList.size());
			System.out.println("Model contentList addAttribute Set success");
			System.out.println("--------------------------------------------------------------\n");
			return "com/sillasys/page/member";
		}
			
				
				
	/*GET go페이지 이동 맵핑 구간 끝 */
	/*POST do맵핑*/
		
}