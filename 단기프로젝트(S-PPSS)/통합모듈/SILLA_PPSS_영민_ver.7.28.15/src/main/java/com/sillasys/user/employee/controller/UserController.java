package com.sillasys.user.employee.controller;
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
import com.sillasys.contract.vo.ContractBenefitVO;
import com.sillasys.contract.vo.ContractEndVO;
import com.sillasys.contract.vo.ContractVO;
import com.sillasys.contract.vo.ContractWorkVO;
import com.sillasys.user.employee.service.UserService;
import com.sillasys.user.employee.vo.CompanyVO;
import com.sillasys.user.employee.vo.UserVO;

import egovframework.rte.psl.dataaccess.util.EgovMap;

@Controller
public class UserController {
	@Resource(name = "userService")
	private UserService userService;
	
	// 회원가입
	@RequestMapping(value = "/user/join.do", method = RequestMethod.POST)
	public String regist(@ModelAttribute UserVO vo) throws Exception {
		
		userService.doJoin(vo);
		System.out.println("회원가입에 성공했습니다.\n *생성된 아이디 : " + vo.getUser_id());
		return "com/sillasys/user/login";
	}


	// 중복확인

	@RequestMapping(value = "/common/joinIdCheck.do", method = RequestMethod.POST)
	public String doIdCheck(@ModelAttribute UserVO vo, Model model) throws Exception {

		System.out.print("중복체크 유효성체크: ");
		String id = vo.getUser_id();
		String msg = vo.getUser_id() + "은(는) 사용 가능합니다.";
		boolean res = true;
		boolean result = true;

		if (userService.doIdCheck(vo.getUser_id()) != null) {
			msg = vo.getUser_id() + "은(는) 이미 사용중입니다.";
			result = false;
			System.out.print("*" + vo.getUser_id() + "은(는) 중복된 아이디입니다.*\n");
		} else {
			System.out.print("*" + vo.getUser_id() + "은(는) 사용 가능한 아이디입니다.*\n");
		}
		model.addAttribute("res", res);
		model.addAttribute("id", id);
		model.addAttribute("msg", msg);
		model.addAttribute("result", result);

		return "com/sillasys/common/joinIdCheck";

	}

	// 로그인
	@RequestMapping(value = "/user/login.do", method = RequestMethod.POST)
	public String doLogin(@ModelAttribute UserVO vo, Model model, HttpServletRequest request) throws Exception {
		EgovMap loginUser = userService.selectLoginUser(vo);

		System.out.println("※※※유저계정 접속시도※※※ \n 입력 된 아이디 : " + vo.getUser_id() + "\n 입력 된 비밀번호 : " + vo.getUser_pw()
				+ "\n＆＆접속 시도한 ip :" + request.getRemoteAddr() + " ＆＆\n");
		String msg = "아이디 또는 패스워드가 일치하지 않습니다.";
		String url = "/user/login.do";

		if (loginUser != null) {
			msg = "로그인에 성공했습니다.";
			url = "/user/mypage.do";
			// session에 로그인유저 정보 유지
			HttpSession hs = request.getSession();
			hs.setAttribute("loginUser", loginUser);
			System.out.println("접속이 완료되었습니다.(세션값 저장완료)\n");

		}

		model.addAttribute("msg", msg);
		model.addAttribute("url", url);

		return "com/sillasys/common/common";
	}

	// 로그아웃
	@RequestMapping(value = "user/logout.do", method = RequestMethod.GET)
	public String doLogout(HttpServletRequest request, Model model) {
		
		HttpSession hs = request.getSession();
		EgovMap loginUser = (EgovMap) hs.getAttribute("loginUser");
		
		if (loginUser != null) {
		System.out.println("※※※로그아웃 시도※※※ \n 시도 한 아이디 : " + loginUser.get("userId") + "\n＆＆로그아웃 시도 ip :"
				+ request.getRemoteAddr() + " ＆＆\n");

		hs.invalidate();
		model.addAttribute("msg", "로그아웃에 성공했습니다.");
		model.addAttribute("url", "/user/login.do");
		}
		else {
			model.addAttribute("msg", " 세션값이 존재하지 않습니다.");
			model.addAttribute("url", "/admin/login.do");
		}
		return "com/sillasys/common/common";
	}

	/* 페이지 이동 맵핑 구간 시작 */

	// 로그인페이지 이동
	@RequestMapping(value = "/user/login.do", method = RequestMethod.GET)
	public String goLogin(HttpServletRequest request) throws Exception {
		HttpSession hs = request.getSession();
		EgovMap loginUser = (EgovMap) hs.getAttribute("loginUser");
		if (loginUser != null)
			return "redirect:/user/mypage.do";// 주소
		return "com/sillasys/user/login";
	}

	// 회원가입페이지 이동
	@RequestMapping(value = "/user/join.do", method = RequestMethod.GET)
	public String goJoin() {
		return "com/sillasys/user/join";
	}

	// 메인 페이지로 이동
	@RequestMapping(value = "/user/index.do", method = RequestMethod.GET)
	public String goIdx(@ModelAttribute ContractVO vo, HttpServletRequest request, ModelMap model) throws Exception {
		System.out.println("\n-----------------------------------------------------");
		System.out.println("index.do : get방식");
		HttpSession hs = request.getSession();
		EgovMap loginUser = (EgovMap) hs.getAttribute("loginUser");
		if (loginUser == null) {return "com/sillasys/user/login";}
		vo.setUser_id(loginUser.get("userId").toString());

		List<EgovMap> contentList = userService.getContract(vo);
		System.out.println("조회 된 레코드 수" + contentList.size());
		System.out.println(contentList.toString());

		model.addAttribute("contentList", contentList);
		System.out.println("-----------------------------------------------------\n");
		return "com/sillasys/user/index";
	}

	// 양식페이지로 이동
	@RequestMapping(value = "/user/write.do", method = RequestMethod.GET)
	public String goWrite(HttpServletRequest request) {
		HttpSession hs = request.getSession();
		EgovMap loginUser = (EgovMap) hs.getAttribute("loginUser");
		if (loginUser == null) {return "com/sillasys/user/login";}
		return "com/sillasys/user/write";
	}


	// 회원가입 ID 중복 확인
	@RequestMapping(value = "/common/joinIdCheck.do", method = RequestMethod.GET)
	public String goJoinIdCheck() {
		
		return "com/sillasys/common/joinIdCheck";
	}

	/*통합 부분(지원+지하) */
	// 개인정보수정페이지 이동
	@RequestMapping(value = "/user/perinfo.do", method = RequestMethod.GET)
	public String goPerinfo(HttpServletRequest request) {
		HttpSession hs = request.getSession();
		EgovMap loginUser = (EgovMap) hs.getAttribute("loginUser");
		if (loginUser == null) {return "com/sillasys/user/login";}
		return "com/sillasys/user/perinfo";
	}
	// 기업선택 페이지로 이동
	@RequestMapping(value = "/user/coselect.do", method = RequestMethod.GET)
	public String gocoselect(HttpServletRequest request) {
		HttpSession hs = request.getSession();
		EgovMap loginUser = (EgovMap) hs.getAttribute("loginUser");
		if (loginUser == null) {return "com/sillasys/user/login";}
		return "com/sillasys//user/coselect";
	}
	// 기업선택 페이지에서 검색
	@RequestMapping(value = "/user/coselect.do", method = RequestMethod.POST)
	public String docoselect(@ModelAttribute UserVO vo, HttpServletRequest request) throws Exception {
		HttpSession hs = request.getSession();
		EgovMap loginUser = (EgovMap) hs.getAttribute("loginUser");
		if (loginUser == null) {return "com/sillasys/user/login";}
		vo.setUser_id(loginUser.get("userId").toString());
		userService.updateCoop(vo);

		return "/com/sillasys/user/mypage";
	}
	
	@RequestMapping(value = "/user/mypage.do", method = RequestMethod.GET)
	public String gomypage(HttpServletRequest request) throws Exception {
		HttpSession hs = request.getSession();
		EgovMap loginUser = (EgovMap) hs.getAttribute("loginUser");
		if (loginUser == null) {return "com/sillasys/user/login";}
		return "/com/sillasys/user/mypage";
	}
	// 기업리스트 페이지로 이동
	@RequestMapping(value = "/common/colist.do", method = RequestMethod.GET)
	public String goColist( HttpServletRequest request) {
		HttpSession hs = request.getSession();
		EgovMap loginUser = (EgovMap) hs.getAttribute("loginUser");
		if (loginUser == null) {return "com/sillasys/user/login";}
		return "com/sillasys/common/colist";
	}


	//근로계약서 양식 작성 페이지
    	@RequestMapping(value = "/user/write.do" , method = RequestMethod.POST)
    	public String doWrite(HttpServletRequest request) {
    		HttpSession hs = request.getSession();
		EgovMap loginUser = (EgovMap) hs.getAttribute("loginUser");
		if (loginUser == null) {return "com/sillasys/user/login";}
     		 return "com/sillasys/user/write";
 	   }

	// 기업리스트
	@RequestMapping(value = "/common/colist.do", method = RequestMethod.POST)
	public String docolist(@ModelAttribute CompanyVO vo, ModelMap model,HttpServletRequest request) throws Exception {
		HttpSession hs = request.getSession();
		EgovMap loginUser = (EgovMap) hs.getAttribute("loginUser");
		if (loginUser == null) {return "com/sillasys/user/login";}
		List<EgovMap> contentList = userService.coList(vo);
		System.out.println("조회 된 레코드 수" + contentList.size());
		System.out.println(contentList.toString());

		model.addAttribute("contentList", contentList);
		return "/com/sillasys/common/colist";
	}

	/*
	// 기업선택페이지 이동
	@RequestMapping(value = "/user/template/contract1.do", method = RequestMethod.POST)
	public String goContract1(HttpServletRequest request) {
		HttpSession hs = request.getSession();
		EgovMap loginUser = (EgovMap) hs.getAttribute("loginUser");
		if (loginUser == null) {return "com/sillasys/user/login";}
		return "com/sillasys/user/template/contract1";
	}
*/

	// 근로자 - contract1표준(기간정함) 근로계약서 조회
	@RequestMapping(value = "/user/template/contract1.do", method = RequestMethod.POST)
	public String doContract1(@ModelAttribute ContractVO vo, HttpServletRequest request, ModelMap model) throws Exception {

		System.out.println("\n--------------------------------------------------------------");
		System.out.println("user VIEW contract1.do: get방식 실행됨");
		System.out.println("request.getParameter view btn : "+request.getParameter("viewbtn"));
		
		EgovMap result = null;
		
		int contract_pk=  Integer.parseInt(request.getParameter("viewbtn"));
		
		
		System.out.println("contract_pk = "+contract_pk);
		vo.setContract_pk(contract_pk);
		
		System.out.println(vo.getContract_pk());
		result = userService.searchType1(vo);
		
		System.out.println("서비스 결과 : "+result.toString());
		model.addAttribute("result", result);
		System.out.println("Model contentList addAttribute Set success");
		System.out.println("--------------------------------------------------------------\n");
		
		return "com/sillasys/view/admin/contract1";
	}

	// 표준(기간없음) 근로계약서 조회
	@RequestMapping(value = "/user/template/contract2.do", method = RequestMethod.GET)
	public String doContract2(@ModelAttribute ContractVO vo, @ModelAttribute ContractWorkVO vo3,
			@ModelAttribute ContractBenefitVO vo4, @ModelAttribute CompanyVO vo5, @ModelAttribute UserVO vo6,
			HttpServletRequest request, ModelMap model) throws Exception {

		HttpSession hs = request.getSession();
		System.out.println("" + hs.toString());
		EgovMap loginUser = (EgovMap) hs.getAttribute("loginUser");
		
		return "com/sillasys/user/template/contract2";
	}
	// 근로계약서 DB삭제
	@RequestMapping(value = "/user/index.do", method = RequestMethod.POST)
	public String deleteContract(@ModelAttribute ContractVO vo, HttpServletRequest request) throws Exception {

		HttpSession hs = request.getSession();
		System.out.println("" + hs.toString());
		EgovMap loginUser = (EgovMap) hs.getAttribute("loginUser");
		vo.setUser_id(loginUser.get("userId").toString());
		System.out.println("vo.userId" + vo.getUser_id());

		return "com/sillasys/user/index";
	}
	/* 페이지 이동 맵핑 구간 끝 */
	
    

}