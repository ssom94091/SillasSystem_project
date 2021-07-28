	// 메인 페이지로 이동
	@RequestMapping(value = "/user/index.do", method = RequestMethod.GET)
	public String goIdx(@ModelAttribute ContractVO vo, HttpServletRequest request, ModelMap model) throws Exception {
		HttpSession hs = request.getSession();
		EgovMap loginUser = (EgovMap) hs.getAttribute("loginUser");
		if (loginUser == null) {return "com/sillasys/user/login";}
		System.out.println("" + hs.toString());
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