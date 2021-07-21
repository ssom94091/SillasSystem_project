package com.sillasys.user.employee.controller;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import com.sillasys.user.employee.service.ContractService;
import com.sillasys.user.employee.service.UserService;
import com.sillasys.user.employee.vo.ContractVO;
import com.sillasys.user.employee.vo.UserVO;

import egovframework.rte.psl.dataaccess.util.EgovMap;

@Controller
public class UserController {
	@Resource(name = "userService")
	private UserService userService;
	
	@Resource(name = "ContractService")
	private ContractService ContractService;

	// 회원가입
	@RequestMapping(value = "/user/join.do", method = RequestMethod.POST)
	public String regist(@ModelAttribute UserVO vo) throws Exception {

		userService.doJoin(vo);
		System.out.println("회원가입에 성공했습니다.\n *생성된 아이디 : " + vo.getUser_id());
		return "com/sillasys/user/login";
	}

	
	// 계약서1 DB 전송
	@RequestMapping(value = "/ec/template/contract1.do", method = RequestMethod.POST)
	public String trmTemplate1(@ModelAttribute ContractVO vo) throws Exception {
		ContractService.trmTemplate1(vo);
		ContractService.trmTemplateWork(vo);
		ContractService.trmTemplateEnd(vo);
		ContractService.trmTemplateBenefit(vo);
		
		return "com/sillasys/ec/template/contract1";
	}
	
	// 계약서2 DB 전송
	@RequestMapping(value = "/ec/template/contract2.do", method = RequestMethod.POST)
	public String trmTemplate2(@ModelAttribute ContractVO vo) throws Exception {
		ContractService.trmTemplate2(vo);
		ContractService.trmTemplateWork(vo);
		ContractService.trmTemplateEnd(vo);
		ContractService.trmTemplateBenefit(vo);

		return "com/sillasys/ec/template/contract2";
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
			url = "/user/index.do";
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

	/* 페이지 이동 맵핑 구간 시작 */

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

	// 메인 페이지로 이동
	@RequestMapping(value = "/user/index.do", method = RequestMethod.GET)
	public String goIdx() {
		return "com/sillasys/user/index";
	}

	// 양식페이지로 이동
	@RequestMapping(value = "/user/write.do", method = RequestMethod.GET)
	public String goWrite() {
		return "com/sillasys/user/write";
	}

	// 근로계약서( 표준근로계약서 - 기간)
	@RequestMapping(value = "/ec/template/contract1.do", method = RequestMethod.GET)
	public String goContract() {
		return "com/sillasys/ec/template/contract1";
	}

	// 근로계약서( 표준근로계약서 - 기간없음)
	@RequestMapping(value = "/ec/template/contract2.do", method = RequestMethod.GET)
	public String goContract2() {
		return "com/sillasys/ec/template/contract2";
	}

	// 근로계약서( 단기간근로계약서 - 기간)
	@RequestMapping(value = "/ec/template/contract3.do", method = RequestMethod.GET)
	public String goContract3() {
		return "com/sillasys/ec/template/contract3";
	}

	// 근로계약서( 단기간근로계약서 - 기간없음)
	@RequestMapping(value = "/ec/template/contract4.do", method = RequestMethod.GET)
	public String goContract4() {
		return "com/sillasys/ec/template/contract4";
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


	

	 // 계약서3 DB 전송
	   @RequestMapping(value = "/ec/template/contract3.do", method = RequestMethod.POST)
	   public String trmTemplate3(@ModelAttribute ContractVO vo) throws Exception {
	      ContractService.trmTemplate3(vo);
	      ContractService.trmTemplateStWork(vo);
	      ContractService.trmTemplateEnd(vo);
	      ContractService.trmTemplateBenefit(vo);
	      
	      return "com/sillasys/ec/template/contract3";
	   }

	   // 계약서4 DB 전송
	   @RequestMapping(value = "/ec/template/contract4.do", method = RequestMethod.POST)
	   public String trmTemplate4(@ModelAttribute ContractVO vo) throws Exception {
	      ContractService.trmTemplate4(vo);
	      ContractService.trmTemplateStWork(vo);
	      ContractService.trmTemplateBenefit(vo);
	      
	      return "com/sillasys/ec/template/contract4";
	   }


	/* 페이지 이동 맵핑 구간 끝 */
	
    //양식
    @RequestMapping(value = "/user/write.do" , method = RequestMethod.POST)
    public String doWrite() {
       return "com/sillasys/user/write";
    }

}