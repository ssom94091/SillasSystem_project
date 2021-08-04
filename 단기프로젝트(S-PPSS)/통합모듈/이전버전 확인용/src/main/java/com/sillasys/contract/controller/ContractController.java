 package com.sillasys.contract.controller;

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

import com.sillasys.admin.employer.vo.AdminVO;
import com.sillasys.contract.service.ContractService;
import com.sillasys.contract.vo.ContractBenefitVO;
import com.sillasys.contract.vo.ContractEndVO;
import com.sillasys.contract.vo.ContractVO;
import com.sillasys.contract.vo.ContractWorkVO;
import com.sillasys.user.employee.vo.UserVO;

import egovframework.rte.psl.dataaccess.util.EgovMap;


@Controller
public class ContractController {

	@Resource(name = "contractService")
	private ContractService contractService;
	

	
	@RequestMapping(value="contract/list.do", method = RequestMethod.GET)
	public String selectMainList(@ModelAttribute ContractVO vo,HttpServletRequest request, ModelMap model ) throws Exception{
		System.out.println("\n-------------------------------");
		System.out.println("list.do : get방식 실행됨");
		HttpSession hs = request.getSession();
		EgovMap loginAdmin = (EgovMap) hs.getAttribute("loginAdmin");  
		
		String admin_id = (String) loginAdmin.get("adminId");  //세션으로부터 adminId를 받아온다. (캐스팅 스트링)
		vo.setAdmin_id(admin_id);  // vo에 adminId를 입력한다.

		List<EgovMap> contentList = contractService.selectList(vo);
		
		System.out.println("레코드 수 :"+contentList.size());
		System.out.println(contentList.toString());
		if(contentList != null) {
		System.out.println("데이터 set 성공");
		}
		model.addAttribute("contentList", contentList);	
		model.addAttribute("contractSize",contentList.size());
		System.out.println("Model contentList addAttribute Set success");
		System.out.println("--------------------------------------------------------------\n");
		return "com/sillasys/contract/list";
	}
	
	/*리스트.do 검색 메서드*/
	@RequestMapping(value="contract/list.do", method = RequestMethod.POST)
	public String searchMainList(@ModelAttribute ContractVO vo,HttpServletRequest request, ModelMap model ) throws Exception{
		System.out.println("\n--------------------------------------------------------------");
		System.out.println("list.do : post방식 실행됨");
		HttpSession hs = request.getSession();
		EgovMap loginAdmin = (EgovMap) hs.getAttribute("loginAdmin");  
		List<EgovMap> contentList;
		String admin_id = (String) loginAdmin.get("adminId");  //세션으로부터 adminId를 받아온다. (캐스팅 스트링)
		vo.setAdmin_id(admin_id);  // vo에 adminId를 입력한다.
		System.out.println("검색타입"+request.getParameter("search_type"));
	    int searchingtype =  Integer.parseInt(request.getParameter("search_type"));
		
		if(searchingtype==1) {contentList = contractService.searchNameContractList(vo); }
		else if(searchingtype==2) {contentList = contractService.searchTypeContractList(vo); }
		else if(searchingtype==3) { contentList = contractService.searchContentContractList(vo);}
		else{ contentList = contractService.selectList(vo);}
		System.out.println("레코드 수 :"+contentList.size());
		System.out.println(contentList.toString());
		if(contentList != null) {
		System.out.println("데이터 set 성공");
		}
		model.addAttribute("contentList", contentList);	
		model.addAttribute("contractSize",contentList.size());
		System.out.println("Model contentList addAttribute Set success");
		System.out.println("--------------------------------------------------------------\n");
		return "com/sillasys/contract/list";
	}
	
	/*직원목록 */
	@RequestMapping(value="contract/contractList.do", method = RequestMethod.GET)
	public String selectContractList(@ModelAttribute ContractVO vo,HttpServletRequest request, ModelMap model ) throws Exception{
		System.out.println("\n--------------------------------------------------------------");
		System.out.println("contractList.do : get방식 실행됨");
		HttpSession hs = request.getSession();
		EgovMap loginAdmin = (EgovMap) hs.getAttribute("loginAdmin");  
		
		String admin_id = (String) loginAdmin.get("adminId");  //세션으로부터 adminId를 받아온다. (캐스팅 스트링)
		vo.setAdmin_id(admin_id);  // vo에 adminId를 입력한다.
		
		
		
		List<EgovMap> contentList = contractService.selectContractList(vo);
		
		System.out.println("레코드 수 :"+contentList.size());
		System.out.println(contentList.toString());
		if(contentList != null) {
		System.out.println("데이터 set 성공");
		}
		System.out.println(contentList.get(0).keyList());
		model.addAttribute("contentList", contentList);	
		model.addAttribute("contractSize",contentList.size());
		System.out.println("Model contentList addAttribute Set success");
		System.out.println("--------------------------------------------------------------\n");
		return "com/sillasys/contract/contractList";
	}

// 근로계약서1 작성( 표준근로계약서 - 기간 GET방식)
	@RequestMapping(value = "/contract/template/contract1.do", method = RequestMethod.GET)
	public String goContract1(ContractVO vo,HttpServletRequest request, ModelMap model) throws Exception{
		System.out.println("\n--------------------------------------------------------------");
		System.out.println("contract1.do : get방식 실행됨");
		System.out.println("requset.getAttributeNames:"+request.getAttributeNames());
		System.out.println("request.getParameterNames:"+request.getParameterNames());
		System.out.println("viewbtn:"+request.getParameter("viewbtn"));
		HttpSession hs = request.getSession();
		EgovMap result = null;
		int sessionChk=0;  //0이면 어드민 세션, 1이면 유저 세션
		
		if(hs.getAttribute("loginAdmin")!=null) {  /* Admin write 부분 */
			sessionChk=0;
			EgovMap loginAdmin = (EgovMap) hs.getAttribute("loginAdmin"); 
			String admin_id = (String) loginAdmin.get("adminId");  //세션으로부터 adminId를 받아온다. (캐스팅 스트링)
			vo.setAdmin_id(admin_id);
			
		}
		else if(hs.getAttribute("loginUser")!=null) {
			sessionChk=1;
			EgovMap loginUser = (EgovMap) hs.getAttribute("loginUser"); 
			String user_id = (String) loginUser.get("userId");  //세션으로부터 userId를 받아온다. (캐스팅 스트링)
			vo.setUser_id(user_id);
		}
		
		if(sessionChk==0) {
			System.out.println("admin 세션 값을 받아왔습니다.");
			result = contractService.adminTemplate(vo);
		}
		else if(sessionChk==1) {
			System.out.println("user 값 받아옴");
		 result = contractService.userTemplate(vo);
		}
		System.out.println(result.toString());
		model.addAttribute("result", result);
		System.out.println("Model contentList addAttribute Set success");
		System.out.println("--------------------------------------------------------------\n");
		
		return "com/sillasys/contract/template/contract1";
	}

	// 근로계약서( 표준근로계약서 - 기간없음)
	@RequestMapping(value = "/contract/template/contract2.do", method = RequestMethod.GET)
	public String goContract2() {
		return "com/sillasys/contract/template/contract2";
	}

	 // 근로계약서 DB전송( 표준근로계약서 - 기간)
   @RequestMapping(value = "/contract/template/contract1.do", method = RequestMethod.POST)
   public String trmTemplate(@ModelAttribute ContractVO vo) throws Exception {
      EgovMap result=null
    		  try{
    		result = contractService.writeContract1(vo);
    			}
      		catch (Exception e){
    	  
      		}
      
      System.out.println("result get 스트링 값: " + result.get("contractPk").toString());

      return "com/sillasys/contract/template/contract1";
   }

	   // 근로계약서 DB전송( 표준근로계약서 - 기간없음)
   @RequestMapping(value = "/contract/template/contract2.do", method = RequestMethod.POST)
   public String trmTemplate2(@ModelAttribute ContractVO vo, @ModelAttribute ContractWorkVO vo2,
         @ModelAttribute ContractEndVO vo3, @ModelAttribute ContractBenefitVO vo4) throws Exception {
      EgovMap result = contractService.trmTemplate(vo); // db에 contract_tb
      System.out.println("result get 스트링 값: " + result.get("contractPk").toString());
      vo2.setContract_pk(Integer.parseInt(result.get("contractPk").toString()));
      vo3.setContract_pk(Integer.parseInt(result.get("contractPk").toString()));
      vo4.setContract_pk(Integer.parseInt(result.get("contractPk").toString()));

      contractService.trmTemplateWork(vo2);
      if (vo4.getBenefit_check() == 1) {
         contractService.trmTemplateBenefit(vo4);
      }

      return "com/sillasys/contract/template/contract2";
   }

	// 어드민 근로계약서 delete( 표준근로계약서 - 기간 GET방식)
			@RequestMapping(value = "/common/delete.do", method = RequestMethod.POST)
			public String deleteContract(ContractVO vo,HttpServletRequest request, ModelMap model) throws Exception{
				System.out.println("\n--------------------------------------------------------------");
				System.out.println("＆＆계약서 삭제 메서드＆＆");
				System.out.println("Admin - DeleteContract 작동 ( POST방식 실행됨 )");
				System.out.println("request.getParameter deletebtn pk : "+request.getParameter("deletebtn"));
				System.out.println("request.getParameter type : "+request.getParameter("type"));
				EgovMap result = null;
				
				int contract_pk=  Integer.parseInt(request.getParameter("deletebtn"));
				vo.setContract_pk(contract_pk);
				System.out.println(vo.getContract_pk());
				
				try{
					contractService.deleteContract(vo);
				}
				catch(Exception e){
					e.printStackTrace();
					System.out.println("데이터가 없습니다.");
				}
				
				System.out.println("서비스 결과 : 계약서데이터 삭제");
				
				System.out.println("Delete success");
				
				String msg = "데이터가 정상적으로 삭제되었습니다.";
				String url = "/contract/list.do";
				model.addAttribute("msg", msg);
				model.addAttribute("url", url);
				
				
				
				System.out.println("--------------------------------------------------------------\n");
				
				return "com/sillasys/common/delete";
			}
			
/*계약서 보기*/
	// 어드민 근로계약서 view( 표준근로계약서 - 기간 GET방식)
		@RequestMapping(value = "/view/admin/contract1.do", method = RequestMethod.POST)
		public String viewContract1(ContractVO vo,HttpServletRequest request, ModelMap model) throws Exception{
			System.out.println("\n--------------------------------------------------------------");
			System.out.println("어드민 VIEW contract1.do: POST방식 실행됨");
			System.out.println("request.getParameter view btn : "+request.getParameter("viewbtn"));
			System.out.println("request.getParameter type : "+request.getParameter("type"));
			
			EgovMap result = null;
			int contract_pk=  Integer.parseInt(request.getParameter("viewbtn"));
			vo.setContract_pk(contract_pk);
			System.out.println(vo.getContract_pk());
			result = contractService.searchType1(vo);
			
			System.out.println("서비스 결과 : "+result.toString());
			model.addAttribute("result", result);
			System.out.println("Model contentList addAttribute Set success");
			System.out.println("--------------------------------------------------------------\n");
			
			return "com/sillasys/view/admin/contract1";
		}
	
		/*계약서 양식 작성 시 받을 직원 조회*/
		@RequestMapping(value = "/common/memberChk.do", method = RequestMethod.GET)
		public String doMemberChk(@ModelAttribute AdminVO vo, Model model, HttpServletRequest request) throws Exception {	
			System.out.println("\n--------------------------------------------------------------");
			System.out.print("＆＆양식 작성 받을 직원조회 ＆＆ ");
			HttpSession hs = request.getSession();
			EgovMap loginAdmin = (EgovMap) hs.getAttribute("loginAdmin");
			String admin_id = (String) loginAdmin.get("adminId");
			String company_name = (String) loginAdmin.get("companyName");
			vo.setAdmin_id(admin_id);
			vo.setCompany_name(company_name);
			List<EgovMap> contentList = null;
			boolean result = false;

			try {
				contentList = contractService.doMemberCheck(vo);
				System.out.println("레코드 수 :"+contentList.size());
				System.out.println(contentList.toString());
				System.out.println("데이터 set 성공");
				result= true;
				
			}
			catch(Exception e){
				
			}
			
			System.out.println(contentList.get(0).keyList());
			model.addAttribute("result",result);
			model.addAttribute("contentList", contentList);	
			model.addAttribute("contractSize",contentList.size());
			System.out.println("Model contentList addAttribute Set success");
			System.out.println("--------------------------------------------------------------\n");
/*
			if (contractService.doMemberCheck(vo.getUser_id()) != null) {
				
			} else {
				
			}
			model.addAttribute("res", res);
			model.addAttribute("id", id);
			model.addAttribute("msg", msg);
			model.addAttribute("result", result);
			System.out.println("--------------------------------------------------------------\n");
	*/
			return "com/sillasys/common/memberChk";

		}
}