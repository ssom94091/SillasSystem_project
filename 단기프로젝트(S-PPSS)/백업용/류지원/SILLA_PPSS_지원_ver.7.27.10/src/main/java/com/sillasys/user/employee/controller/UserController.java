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
		System.out.println("※※※로그아웃 시도※※※ \n 시도 한 아이디 : " + loginUser.get("userId") + "\n＆＆로그아웃 시도 ip :"
				+ request.getRemoteAddr() + " ＆＆\n");

		hs.invalidate();
		model.addAttribute("msg", "로그아웃에 성공했습니다.");
		model.addAttribute("url", "/user/login.do");

		return "com/sillasys/common/common";
	}

	// 로그인페이지 이동
	@RequestMapping(value = "/user/login.do", method = RequestMethod.GET)
	public String goLogin(HttpServletRequest request) throws Exception {
		HttpSession hs = request.getSession();
		EgovMap loginUser = (EgovMap) hs.getAttribute("loginUser");
		if (loginUser != null)
			return "redirect:/user/index.do";// 주소
		return "com/sillasys/user/login";
	}

	// 회원가입페이지 이동
	@RequestMapping(value = "/user/join.do", method = RequestMethod.GET)
	public String goJoin() {
		return "com/sillasys/user/join";
	}

	// 양식페이지로 이동
	@RequestMapping(value = "/user/write.do", method = RequestMethod.GET)
	public String goWrite() {
		return "com/sillasys/user/write";
	}

	// 회원가입 ID 중복 확인
	@RequestMapping(value = "/common/joinIdCheck.do", method = RequestMethod.GET)
	public String goJoinIdCheck() {
		return "com/sillasys/common/joinIdCheck";
	}

	// 카드형식
	@RequestMapping(value = "/common/card.do", method = RequestMethod.GET)
	public String goCard() {
		return "com/sillasys/common/card";
	}

	// 기업선택페이지 이동
	@RequestMapping(value = "/user/perinfo.do", method = RequestMethod.GET)
	public String goPerinfo() {
		return "com/sillasys/user/perinfo";
	}

	// 근로계약서 양식
	@RequestMapping(value = "/user/write.do", method = RequestMethod.POST)
	public String doWrite() {
		return "com/sillasys/user/write";
	}

	// 기업선택 페이지로 이동
	@RequestMapping(value = "/user/coselect.do", method = RequestMethod.GET)
	public String gocoselect() {
		return "com/sillasys//user/coselect";
	}

	// 기업선택 페이지에서 검색
	@RequestMapping(value = "/user/coselect.do", method = RequestMethod.POST)
	public String docoselect(@ModelAttribute UserVO vo, HttpServletRequest request) throws Exception {
		HttpSession hs = request.getSession();
		EgovMap loginUser = (EgovMap) hs.getAttribute("loginUser");
		vo.setUser_id(loginUser.get("userId").toString());
		userService.updateCoop(vo);
		return "/com/sillasys/user/mypage";
	}
	   
	
	// 근로계약서( 표준근로계약서 - 기간)
	   @RequestMapping(value = "/user/mypage.do", method = RequestMethod.GET)
	   public String gomypage() {
	      return "com/sillasys/user/mypage";
	   }
	   
	// 기업리스트 페이지로 이동
	@RequestMapping(value = "/common/colist.do", method = RequestMethod.GET)
	public String goColist() {
		return "com/sillasys/common/colist";
	}

	// 메인 페이지로 이동
	@RequestMapping(value = "/user/index.do", method = RequestMethod.GET)
	public String goIdx(@ModelAttribute ContractVO vo, HttpServletRequest request, ModelMap model) throws Exception {
		HttpSession hs = request.getSession();
		System.out.println("" + hs.toString());
		EgovMap loginUser = (EgovMap) hs.getAttribute("loginUser");
		vo.setUser_id(loginUser.get("userId").toString());
		System.out.println("vo.userId" + vo.getUser_id());

		List<EgovMap> contentList = userService.getContract(vo);
		System.out.println("조회 된 레코드 수" + contentList.size());
		System.out.println(contentList.toString());

		model.addAttribute("contentList", contentList);
		return "com/sillasys/user/index";
	}

	// 기업리스트
	@RequestMapping(value = "/common/colist.do", method = RequestMethod.POST)
	public String docolist(@ModelAttribute CompanyVO vo, ModelMap model) throws Exception {

		List<EgovMap> contentList = userService.coList(vo);
		System.out.println("조회 된 레코드 수" + contentList.size());
		System.out.println(contentList.toString());

		model.addAttribute("contentList", contentList);
		return "/com/sillasys/common/colist";
	}

	// 기업선택페이지 이동
	@RequestMapping(value = "/user/template/contract1.do", method = RequestMethod.POST)
	public String goContract1() {
		return "com/sillasys/user/template/contract1";
	}

	// 표준(기간있음) 근로계약서 조회
	@RequestMapping(value = "/user/template/contract1.do", method = RequestMethod.GET)
	public String doContract1(@ModelAttribute ContractVO vo, @ModelAttribute ContractEndVO vo2,
			@ModelAttribute ContractWorkVO vo3, @ModelAttribute ContractBenefitVO vo4, @ModelAttribute CompanyVO vo5,
			@ModelAttribute UserVO vo6, HttpServletRequest request, ModelMap model) throws Exception {

		HttpSession hs = request.getSession();
		System.out.println("" + hs.toString());
		EgovMap loginUser = (EgovMap) hs.getAttribute("loginUser");
		vo.setUser_id(loginUser.get("userId").toString());
		System.out.println("vo.userId" + vo.getUser_id());
		List<EgovMap> contentList = userService.writeContract(vo);
		List<EgovMap> endList = userService.writeEndContract(vo2);
		List<EgovMap> workList = userService.writeWorkContract(vo3);
		List<EgovMap> benefitList = userService.writeBenefitContract(vo4);
		List<EgovMap> companyList = userService.writeCompanyContract(vo5);
		List<EgovMap> userList = userService.writeUserContract(vo6);

		System.out.println("조회 된 레코드 수" + contentList.size());
		System.out.println(contentList.toString());

		System.out.println("조회 된 레코드 수" + endList.size());
		System.out.println(endList.toString());

		System.out.println("조회 된 레코드 수" + workList.size());
		System.out.println(workList.toString());

		System.out.println("조회 된 레코드 수" + benefitList.size());
		System.out.println(benefitList.toString());

		System.out.println("조회 된 레코드 수" + companyList.size());
		System.out.println(companyList.toString());

		System.out.println("조회 된 레코드 수" + userList.size());
		System.out.println(userList.toString());

		model.addAttribute("contentList", contentList);
		model.addAttribute("endList", endList);
		model.addAttribute("workList", workList);
		model.addAttribute("companyList", companyList);
		model.addAttribute("userList", userList);
		if (benefitList.size() != 0) {
			model.addAttribute("benefitList", benefitList);
		}
		return "com/sillasys/user/template/contract1";
	}

	// 표준(기간없음) 근로계약서 조회
	@RequestMapping(value = "/user/template/contract2.do", method = RequestMethod.GET)
	public String doContract2(@ModelAttribute ContractVO vo, @ModelAttribute ContractWorkVO vo3,
			@ModelAttribute ContractBenefitVO vo4, @ModelAttribute CompanyVO vo5, @ModelAttribute UserVO vo6,
			HttpServletRequest request, ModelMap model) throws Exception {

		HttpSession hs = request.getSession();
		System.out.println("" + hs.toString());
		EgovMap loginUser = (EgovMap) hs.getAttribute("loginUser");
		vo.setUser_id(loginUser.get("userId").toString());
		System.out.println("vo.userId" + vo.getUser_id());
		List<EgovMap> contentList = userService.writeContract(vo);
		List<EgovMap> workList = userService.writeWorkContract(vo3);
		List<EgovMap> benefitList = userService.writeBenefitContract(vo4);
		List<EgovMap> companyList = userService.writeCompanyContract(vo5);
		List<EgovMap> userList = userService.writeUserContract(vo6);

		System.out.println("조회 된 레코드 수" + contentList.size());
		System.out.println(contentList.toString());

		System.out.println("조회 된 레코드 수" + workList.size());
		System.out.println(workList.toString());

		System.out.println("조회 된 레코드 수" + benefitList.size());
		System.out.println(benefitList.toString());

		System.out.println("조회 된 레코드 수" + companyList.size());
		System.out.println(companyList.toString());

		System.out.println("조회 된 레코드 수" + userList.size());
		System.out.println(userList.toString());

		model.addAttribute("contentList", contentList);
		model.addAttribute("workList", workList);
		model.addAttribute("companyList", companyList);
		model.addAttribute("userList", userList);
		if (benefitList.size() != 0) {
			model.addAttribute("benefitList", benefitList);
		}
		return "com/sillasys/user/template/contract2";
	}
	
	// 표준(기간있음) 근로계약서 조회
		@RequestMapping(value = "/user/template/contract3.do", method = RequestMethod.GET)
		public String doContract3(@ModelAttribute ContractVO vo, @ModelAttribute ContractEndVO vo2,
				@ModelAttribute ContractWorkVO vo3, @ModelAttribute ContractBenefitVO vo4, @ModelAttribute CompanyVO vo5,
				@ModelAttribute UserVO vo6, HttpServletRequest request, ModelMap model) throws Exception {

			HttpSession hs = request.getSession();
			System.out.println("" + hs.toString());
			EgovMap loginUser = (EgovMap) hs.getAttribute("loginUser");
			vo.setUser_id(loginUser.get("userId").toString());
			System.out.println("vo.userId" + vo.getUser_id());
			List<EgovMap> contentList = userService.writeContract(vo);
			List<EgovMap> endList = userService.writeEndContract(vo2);
			List<EgovMap> workList = userService.writeWorkContract(vo3);
			List<EgovMap> benefitList = userService.writeBenefitContract(vo4);
			List<EgovMap> companyList = userService.writeCompanyContract(vo5);
			List<EgovMap> userList = userService.writeUserContract(vo6);

			System.out.println("조회 된 레코드 수" + contentList.size());
			System.out.println(contentList.toString());

			System.out.println("조회 된 레코드 수" + endList.size());
			System.out.println(endList.toString());

			System.out.println("조회 된 레코드 수" + workList.size());
			System.out.println(workList.toString());

			System.out.println("조회 된 레코드 수" + benefitList.size());
			System.out.println(benefitList.toString());

			System.out.println("조회 된 레코드 수" + companyList.size());
			System.out.println(companyList.toString());

			System.out.println("조회 된 레코드 수" + userList.size());
			System.out.println(userList.toString());

			model.addAttribute("contentList", contentList);
			model.addAttribute("endList", endList);
			model.addAttribute("workList", workList);
			model.addAttribute("companyList", companyList);
			model.addAttribute("userList", userList);
			if (benefitList.size() != 0) {
				model.addAttribute("benefitList", benefitList);
			}
			return "com/sillasys/user/template/contract3";
		}
	
	// 단기간(기간있음) 근로계약서 조회 페이지로 이동
	@RequestMapping(value = "/user/template/contract3.do", method = RequestMethod.GET)
	public String goContract3() {
		return "com/sillasys/user/template/contract3";
	}

	// 표준(기간없음) 근로계약서 조회 페이지로 이동
	@RequestMapping(value = "/user/template/contract4.do", method = RequestMethod.GET)
	public String goContract4() {
		return "com/sillasys/user/template/contract4";
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

	
}