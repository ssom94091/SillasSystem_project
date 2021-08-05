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

	/* 프로필 */
		@RequestMapping(value = "/page/member/profile.do", method = RequestMethod.GET)
		public String goWritePage(@ModelAttribute MemberVO vo, HttpServletRequest request, ModelMap model) throws Exception {
			System.out.println("\n--------------------------------------------------------------");
			System.out.println("＆profile.do : get방식 실행됨＆");
			HttpSession hs = request.getSession();
			EgovMap loginAdmin = (EgovMap) hs.getAttribute("loginAdmin");  
			if(loginAdmin == null)
				return "redirect:/admin/login.do";
			String member_pk=  request.getParameter("member_pk");
			System.out.println("member_pk : "+member_pk);
			vo.setMember_pk(member_pk);
			
			EgovMap memberList = memberService.selectMember(vo);
			System.out.println(memberList.toString());
			
			model.addAttribute("memberList", memberList);	
			
			return "com/sillasys/page/member/profile";
		}		
		
		
		/* 직원추가 */
		@RequestMapping(value = "/common/createMember.do", method = RequestMethod.GET)
		public String gocreateMember(@ModelAttribute MemberVO vo, HttpServletRequest request, ModelMap model) throws Exception {
			System.out.println("\n--------------------------------------------------------------");
			System.out.println("＆createMember.do : get방식 실행됨＆");
			HttpSession hs = request.getSession();
			EgovMap loginAdmin = (EgovMap) hs.getAttribute("loginAdmin");  
			if(loginAdmin == null)
				return "redirect:/admin/login.do";
			
			
			return "com/sillasys/common/createMember";
		}
		
		@RequestMapping(value = "/common/delete.do", method = RequestMethod.GET)
		public String deleteMember(MemberVO vo,HttpServletRequest request, ModelMap model) throws Exception{
			System.out.println("\n--------------------------------------------------------------");
			System.out.println("Delete 작동 ( GET방식 실행됨 )");
			EgovMap result = null;
			
			String member_pk=  request.getParameter("member_pk");
			vo.setMember_pk(member_pk);
			System.out.println(vo.getMember_pk());
			
			try{
				memberService.deleteMember(vo);
			}
			catch(Exception e){
				e.printStackTrace();
				System.out.println("데이터가 없습니다.");
			}
			
			System.out.println("서비스 결과 : 직원데이터 삭제");
			
			System.out.println("Delete success");
			
			String msg = "데이터가 정상적으로 삭제되었습니다.";
			String url = "/page/member.do";
			model.addAttribute("msg", msg);
			model.addAttribute("url", url);
			
			
			
			System.out.println("--------------------------------------------------------------\n");
			
			return "com/sillasys/common/delete";
		}
	/*GET go페이지 이동 맵핑 구간 끝 */
	/*POST do맵핑*/
		@RequestMapping(value = "/common/create.do", method = RequestMethod.POST)
		public String createMember(MemberVO vo,HttpServletRequest request, ModelMap model) throws Exception{
			System.out.println("\n--------------------------------------------------------------");
			System.out.println("Admin - createContract 작동 ( POST방식 실행됨 )");
			
			
			try{
				System.out.println("try create 서비스");
				EgovMap result =  memberService.searchLastMember(vo);
				System.out.println(result.toString());
				String result1 = (String) result.getValue(0);
				int pk=Integer.parseInt(result1.substring(6,8));
				pk+=1;
				
				StringBuffer sb = new StringBuffer();
				sb.append(result1);
				sb.replace(6, 8, Integer.toString(pk));
				result1 = sb.toString();
				System.out.println("올해의 가장 마지막 사원번호 다음번호 :"+result1);
				vo.setMember_pk(result1);
				memberService.createMember(vo);
			}
			catch(Exception e){
				e.printStackTrace();
				System.out.println("데이터가 없습니다.");
			}
			
			System.out.println("서비스 결과 : 직원데이터 생성");
			
			System.out.println("create success");
			
			String msg = "데이터가 정상적으로 생성되었습니다.";
			String url = "/page/member.do";
			model.addAttribute("msg", msg);
			model.addAttribute("url", url);
			
			
			
			System.out.println("--------------------------------------------------------------\n");
			
			return "com/sillasys/common/create";
		}
}