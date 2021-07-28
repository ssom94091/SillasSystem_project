
package com.sillasys.contract.controller;

import java.util.List;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.sillasys.contract.service.ContractService;
import com.sillasys.contract.vo.ContractBenefitVO;
import com.sillasys.contract.vo.ContractEndVO;
import com.sillasys.contract.vo.ContractVO;
import com.sillasys.contract.vo.ContractWorkVO;

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
      System.out.println("조회 된 레코드 수"+contentList.size());
 
      model.addAttribute("contentList", contentList);   
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

// 근로계약서( 표준근로계약서 - 기간)
   @RequestMapping(value = "/contract/template/contract1.do", method = RequestMethod.GET)
   public String goContract() {
      return "com/sillasys/contract/template/contract1";
   }

   // 근로계약서( 표준근로계약서 - 기간없음)
   @RequestMapping(value = "/contract/template/contract2.do", method = RequestMethod.GET)
   public String goContract2() {
      return "com/sillasys/contract/template/contract2";
   }

   // 근로계약서( 단기간근로계약서 - 기간)
   @RequestMapping(value = "/contract/template/contract3.do", method = RequestMethod.GET)
   public String goContract3() {
      return "com/sillasys/contract/template/contract3";
   }

   // 근로계약서( 단기간근로계약서 - 기간없음)
   @RequestMapping(value = "/contract/template/contract4.do", method = RequestMethod.GET)
   public String goContract4() {
      return "com/sillasys/contract/template/contract4";
   }


   // 근로계약서 DB전송( 표준근로계약서 - 기간)
   @RequestMapping(value = "/contract/template/contract1.do", method = RequestMethod.POST)
   public String trmTemplate(@ModelAttribute ContractVO vo, @ModelAttribute ContractWorkVO vo2,
         @ModelAttribute ContractEndVO vo3, @ModelAttribute ContractBenefitVO vo4) throws Exception {
      EgovMap result = contractService.trmTemplate(vo); // db에 contract_tb
      System.out.println("result get 스트링 값: " + result.get("contractPk").toString());
      vo2.setContract_pk(Integer.parseInt(result.get("contractPk").toString()));
      vo3.setContract_pk(Integer.parseInt(result.get("contractPk").toString()));
      vo4.setContract_pk(Integer.parseInt(result.get("contractPk").toString()));
      
      contractService.trmTemplateWork(vo2);
      contractService.trmTemplateEnd(vo3);
      if (vo4.getBenefit_check() == 1) {
         contractService.trmTemplateBenefit(vo4);
      }

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

   @RequestMapping(value = "/contract/template/contract3.do", method = RequestMethod.POST)
   public String trmTemplate3(@ModelAttribute ContractVO vo,@ModelAttribute ContractWorkVO vo2,@ModelAttribute ContractEndVO vo3, @ModelAttribute ContractBenefitVO vo4, HttpServletRequest request)
         throws Exception {
      System.out.println(vo.getContract_type() + " 이며 " + vo.getAdmin_id());

      EgovMap result = contractService.trmTemplate(vo); // db에 contract_tb
      System.out.println("result get 스트링 값: " + result.get("contractPk").toString());
      vo2.setContract_pk(Integer.parseInt(result.get("contractPk").toString()));
      vo3.setContract_pk(Integer.parseInt(result.get("contractPk").toString()));
      vo4.setContract_pk(Integer.parseInt(result.get("contractPk").toString()));
      
      vo2.setWork_day(request.getParameter("work_day")); // work_day 인풋 밸류를 셋팅시킨다.
      vo2.setFlag(1);
      vo2.setWork_time((request.getParameter("work_time")));
      vo2.setStart_hour(request.getParameter("start_hour"));
      vo2.setStart_min(request.getParameter("start_min"));
      vo2.setEnd_hour(request.getParameter("end_hour"));
      vo2.setEnd_min(request.getParameter("end_min"));
      vo2.setB_start_hour(request.getParameter("b_start_hour"));
      vo2.setB_start_min(request.getParameter("b_start_min"));
      vo2.setB_end_hour(request.getParameter("b_end_hour"));
      vo2.setB_end_min(request.getParameter("b_end_min"));
      System.out.println(vo2.getWork_day() + " " + vo2.getFlag());
      if (vo2.getWork_day() != "" && vo2.getFlag() == 1) {
         contractService.trmTemplateWork(vo2);
      }

      vo2.setWork_day(request.getParameter("work_day_2")); // work_day 인풋 밸류를 셋팅시킨다.
      vo2.setFlag(2);
      vo2.setWork_time((request.getParameter("work_time_2")));
      vo2.setStart_hour(request.getParameter("start_hour_2"));
      vo2.setStart_min(request.getParameter("start_min_2"));
      vo2.setEnd_hour(request.getParameter("end_hour_2"));
      vo2.setEnd_min(request.getParameter("end_min_2"));
      vo2.setB_start_hour(request.getParameter("b_start_hour_2"));
      vo2.setB_start_min(request.getParameter("b_start_min_2"));
      vo2.setB_end_hour(request.getParameter("b_end_hour_2"));
      vo2.setB_end_min(request.getParameter("b_end_min_2"));
      System.out.println(vo2.getWork_day() + " " + vo2.getFlag());
      if (vo2.getWork_day() != "" && vo2.getFlag() == 2) {
         contractService.trmTemplateWork(vo2);
      }

      vo2.setWork_day(request.getParameter("work_day_3")); // work_day 인풋 밸류를 셋팅시킨다.
      vo2.setFlag(3);
      vo2.setWork_time((request.getParameter("work_time_3")));
      vo2.setStart_hour(request.getParameter("start_hour_3"));
      vo2.setStart_min(request.getParameter("start_min_3"));
      vo2.setEnd_hour(request.getParameter("end_hour_3"));
      vo2.setEnd_min(request.getParameter("end_min_3"));
      vo2.setB_start_hour(request.getParameter("b_start_hour_3"));
      vo2.setB_start_min(request.getParameter("b_start_min_3"));
      vo2.setB_end_hour(request.getParameter("b_end_hour_3"));
      vo2.setB_end_min(request.getParameter("b_end_min_3"));
      System.out.println(vo2.getWork_day() + " " + vo2.getFlag());
      if (vo2.getWork_day() != "" && vo2.getFlag() == 3) {
         contractService.trmTemplateWork(vo2);
      }

      vo2.setWork_day(request.getParameter("work_day_4")); // work_day 인풋 밸류를 셋팅시킨다.
      vo2.setFlag(4);
      vo2.setWork_time((request.getParameter("work_time_4")));
      vo2.setStart_hour(request.getParameter("start_hour_4"));
      vo2.setStart_min(request.getParameter("start_min_4"));
      vo2.setEnd_hour(request.getParameter("end_hour_4"));
      vo2.setEnd_min(request.getParameter("end_min_4"));
      vo2.setB_start_hour(request.getParameter("b_start_hour_4"));
      vo2.setB_start_min(request.getParameter("b_start_min_4"));
      vo2.setB_end_hour(request.getParameter("b_end_hour_4"));
      vo2.setB_end_min(request.getParameter("b_end_min_4"));
      System.out.println(vo2.getWork_day() + " " + vo2.getFlag());
      if (vo2.getWork_day() != "" && vo2.getFlag() == 4) {
         contractService.trmTemplateWork(vo2);
      }

      vo2.setWork_day(request.getParameter("work_day_5")); // work_day 인풋 밸류를 셋팅시킨다.
      vo2.setFlag(5);
      vo2.setWork_time((request.getParameter("work_time_5")));
      vo2.setStart_hour(request.getParameter("start_hour_5"));
      vo2.setStart_min(request.getParameter("start_min_5"));
      vo2.setEnd_hour(request.getParameter("end_hour_5"));
      vo2.setEnd_min(request.getParameter("end_min_5"));
      vo2.setB_start_hour(request.getParameter("b_start_hour_5"));
      vo2.setB_start_min(request.getParameter("b_start_min_5"));
      vo2.setB_end_hour(request.getParameter("b_end_hour_5"));
      vo2.setB_end_min(request.getParameter("b_end_min_5"));
      System.out.println(vo2.getWork_day() + " " + vo2.getFlag());
      if (vo2.getWork_day() != "" && vo2.getFlag() == 5) {
         contractService.trmTemplateWork(vo2);
      }

      vo2.setWork_day(request.getParameter("work_day_6")); // work_day 인풋 밸류를 셋팅시킨다.
      vo2.setFlag(6);
      vo2.setWork_time((request.getParameter("work_time_6")));
      vo2.setStart_hour(request.getParameter("start_hour_6"));
      vo2.setStart_min(request.getParameter("start_min_6"));
      vo2.setEnd_hour(request.getParameter("end_hour_6"));
      vo2.setEnd_min(request.getParameter("end_min_6"));
      vo2.setB_start_hour(request.getParameter("b_start_hour_6"));
      vo2.setB_start_min(request.getParameter("b_start_min_6"));
      vo2.setB_end_hour(request.getParameter("b_end_hour_6"));
      vo2.setB_end_min(request.getParameter("b_end_min_6"));
      System.out.println(vo2.getWork_day() + " " + vo2.getFlag());
      if (vo2.getWork_day() != "" && vo2.getFlag() == 6) {
         contractService.trmTemplateWork(vo2);
      }

      contractService.trmTemplateEnd(vo3);

      if (vo4.getBenefit_check() == 1) {
         contractService.trmTemplateBenefit(vo4);
      }

      return "com/sillasys/contract/template/contract3";
   }

   @RequestMapping(value = "/contract/template/contract4.do", method = RequestMethod.POST)
   public String trmTemplate4(@ModelAttribute ContractVO vo, @ModelAttribute ContractWorkVO vo2,
         @ModelAttribute ContractEndVO vo3, @ModelAttribute ContractBenefitVO vo4, HttpServletRequest request)
         throws Exception {
      System.out.println(vo.getContract_type() + " 이며 " + vo.getAdmin_id());

      EgovMap result = contractService.trmTemplate(vo); // db에 contract_tb
      System.out.println("result get 스트링 값: " + result.get("contractPk").toString());
      vo2.setContract_pk(Integer.parseInt(result.get("contractPk").toString()));
      vo3.setContract_pk(Integer.parseInt(result.get("contractPk").toString()));
      vo4.setContract_pk(Integer.parseInt(result.get("contractPk").toString()));
      
      vo2.setWork_day(request.getParameter("work_day")); // work_day 인풋 밸류를 셋팅시킨다.
      vo2.setFlag(1);
      vo2.setWork_time((request.getParameter("work_time")));
      vo2.setStart_hour(request.getParameter("start_hour"));
      vo2.setStart_min(request.getParameter("start_min"));
      vo2.setEnd_hour(request.getParameter("end_hour"));
      vo2.setEnd_min(request.getParameter("end_min"));
      vo2.setB_start_hour(request.getParameter("b_start_hour"));
      vo2.setB_start_min(request.getParameter("b_start_min"));
      vo2.setB_end_hour(request.getParameter("b_end_hour"));
      vo2.setB_end_min(request.getParameter("b_end_min"));
      System.out.println(vo2.getWork_day() + " " + vo2.getFlag());
      if (vo2.getWork_day() != "" && vo2.getFlag() == 1) {
         contractService.trmTemplateWork(vo2);
      }

      vo2.setWork_day(request.getParameter("work_day_2")); // work_day 인풋 밸류를 셋팅시킨다.
      vo2.setFlag(2);
      vo2.setWork_time((request.getParameter("work_time_2")));
      vo2.setStart_hour(request.getParameter("start_hour_2"));
      vo2.setStart_min(request.getParameter("start_min_2"));
      vo2.setEnd_hour(request.getParameter("end_hour_2"));
      vo2.setEnd_min(request.getParameter("end_min_2"));
      vo2.setB_start_hour(request.getParameter("b_start_hour_2"));
      vo2.setB_start_min(request.getParameter("b_start_min_2"));
      vo2.setB_end_hour(request.getParameter("b_end_hour_2"));
      vo2.setB_end_min(request.getParameter("b_end_min_2"));
      System.out.println(vo2.getWork_day() + " " + vo2.getFlag());
      if (vo2.getWork_day() != "" && vo2.getFlag() == 2) {
         contractService.trmTemplateWork(vo2);
      }

      vo2.setWork_day(request.getParameter("work_day_3")); // work_day 인풋 밸류를 셋팅시킨다.
      vo2.setFlag(3);
      vo2.setWork_time((request.getParameter("work_time_3")));
      vo2.setStart_hour(request.getParameter("start_hour_3"));
      vo2.setStart_min(request.getParameter("start_min_3"));
      vo2.setEnd_hour(request.getParameter("end_hour_3"));
      vo2.setEnd_min(request.getParameter("end_min_3"));
      vo2.setB_start_hour(request.getParameter("b_start_hour_3"));
      vo2.setB_start_min(request.getParameter("b_start_min_3"));
      vo2.setB_end_hour(request.getParameter("b_end_hour_3"));
      vo2.setB_end_min(request.getParameter("b_end_min_3"));
      System.out.println(vo2.getWork_day() + " " + vo2.getFlag());
      if (vo2.getWork_day() != "" && vo2.getFlag() == 3) {
         contractService.trmTemplateWork(vo2);
      }

      vo2.setWork_day(request.getParameter("work_day_4")); // work_day 인풋 밸류를 셋팅시킨다.
      vo2.setFlag(4);
      vo2.setWork_time((request.getParameter("work_time_4")));
      vo2.setStart_hour(request.getParameter("start_hour_4"));
      vo2.setStart_min(request.getParameter("start_min_4"));
      vo2.setEnd_hour(request.getParameter("end_hour_4"));
      vo2.setEnd_min(request.getParameter("end_min_4"));
      vo2.setB_start_hour(request.getParameter("b_start_hour_4"));
      vo2.setB_start_min(request.getParameter("b_start_min_4"));
      vo2.setB_end_hour(request.getParameter("b_end_hour_4"));
      vo2.setB_end_min(request.getParameter("b_end_min_4"));
      System.out.println(vo2.getWork_day() + " " + vo2.getFlag());
      if (vo2.getWork_day() != "" && vo2.getFlag() == 4) {
         contractService.trmTemplateWork(vo2);
      }

      vo2.setWork_day(request.getParameter("work_day_5")); // work_day 인풋 밸류를 셋팅시킨다.
      vo2.setFlag(5);
      vo2.setWork_time((request.getParameter("work_time_5")));
      vo2.setStart_hour(request.getParameter("start_hour_5"));
      vo2.setStart_min(request.getParameter("start_min_5"));
      vo2.setEnd_hour(request.getParameter("end_hour_5"));
      vo2.setEnd_min(request.getParameter("end_min_5"));
      vo2.setB_start_hour(request.getParameter("b_start_hour_5"));
      vo2.setB_start_min(request.getParameter("b_start_min_5"));
      vo2.setB_end_hour(request.getParameter("b_end_hour_5"));
      vo2.setB_end_min(request.getParameter("b_end_min_5"));
      System.out.println(vo2.getWork_day() + " " + vo2.getFlag());
      if (vo2.getWork_day() != "" && vo2.getFlag() == 5) {
         contractService.trmTemplateWork(vo2);
      }

      vo2.setWork_day(request.getParameter("work_day_6")); // work_day 인풋 밸류를 셋팅시킨다.
      vo2.setFlag(6);
      vo2.setWork_time((request.getParameter("work_time_6")));
      vo2.setStart_hour(request.getParameter("start_hour_6"));
      vo2.setStart_min(request.getParameter("start_min_6"));
      vo2.setEnd_hour(request.getParameter("end_hour_6"));
      vo2.setEnd_min(request.getParameter("end_min_6"));
      vo2.setB_start_hour(request.getParameter("b_start_hour_6"));
      vo2.setB_start_min(request.getParameter("b_start_min_6"));
      vo2.setB_end_hour(request.getParameter("b_end_hour_6"));
      vo2.setB_end_min(request.getParameter("b_end_min_6"));
      System.out.println(vo2.getWork_day() + " " + vo2.getFlag());
      if (vo2.getWork_day() != "" && vo2.getFlag() == 6) {
         contractService.trmTemplateWork(vo2);
      }

      if (vo4.getBenefit_check() == 1) {
         contractService.trmTemplateBenefit(vo4);
      }

      return "com/sillasys/contract/template/contract4";
   }

   // 근로계약서 DB삭제
   @RequestMapping(value = "/contract/list.do", method = RequestMethod.POST)
   public String delete(@ModelAttribute ContractVO vo, @ModelAttribute ContractWorkVO vo2,
         @ModelAttribute ContractEndVO vo3, @ModelAttribute ContractBenefitVO vo4) throws Exception {

      contractService.delTemplate(vo);
      contractService.delTemplateWork(vo2);
      System.out.println(vo.getContract_pk());
      if (vo3.getEnd_year() != null && vo3.getEnd_month() != null && vo3.getEnd_day() != null) {
         contractService.delTemplateEnd(vo3);
      }
      if (vo4.getBenefit_check() == 1) {
         contractService.delTemplateBenefit(vo4);
      }

      return "com/sillasys/contract/list";
   }
   
   
   
}