 package com.sillasys.contract.controller;

import java.util.List;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import com.sillasys.contract.service.ContractService;
import com.sillasys.contract.vo.ContractVO;
import com.sillasys.user.employee.vo.UserVO;

import egovframework.rte.psl.dataaccess.util.EgovMap;


@Controller
public class ContractController {

	@Resource(name = "contractService")
	private ContractService contractService;
	

	@RequestMapping(value="contract/list.do", method = RequestMethod.GET)
	public String selectMainList(@ModelAttribute ContractVO vo,HttpServletRequest request, ModelMap model ) throws Exception{
		
		HttpSession hs = request.getSession();
		EgovMap loginAdmin = (EgovMap) hs.getAttribute("loginAdmin");  
		
		//System.out.println(loginAdmin.toString());
		//System.out.println(loginAdmin.firstKey());
		//System.out.println(loginAdmin.get("adminId"));
		
		String admin_id = (String) loginAdmin.get("adminId");  //세션으로부터 adminId를 받아온다. (캐스팅 스트링)
		vo.setAdmin_id(admin_id);  // vo에 adminId를 입력한다.
		
		List<EgovMap> contentList = contractService.selectList(vo);
		contentList.size();
		if(contentList != null) {
		System.out.println("성공");
		}
		else {System.out.println("실패");}
		//model.addAttribute("contentList", contentList);	
		return "com/sillasys/contract/list";
	}
	
	//근로계약서 목록보기페이지 이동
	@RequestMapping(value = "/contract/list.do" , method = RequestMethod.GET)
	public String goList() {
		return "com/sillasys/contract/list";
	}
	/*
	@RequestMapping(value = "/ec/regist.do", method = RequestMethod.POST)
	public String doRegist(@ModelAttribute ContractVO vo, HttpServletRequest request) throws Exception{
		HttpSession hs = request.getSession();
		EgovMap loginAdmin = (EgovMap) hs.getAttribute("loginAdmin");
		System.out.println("loginAdmin : "+loginAdmin);
		if(loginAdmin == null) { // 로그인 안하고 등록
			return "redirect:/login.do";
		} else { //로그인 한 사용자
			String companyNm = loginAdmin.get("companyNm").toString();
			String employerNm = loginAdmin.get("id").toString();
		}
		System.out.println("param : "+vo);
		
		System.out.println("vo : "+vo);
		
		
		return "";
	}
		*/
}