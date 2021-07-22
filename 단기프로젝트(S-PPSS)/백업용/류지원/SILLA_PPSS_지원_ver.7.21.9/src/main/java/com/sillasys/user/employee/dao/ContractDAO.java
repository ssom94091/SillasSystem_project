package com.sillasys.user.employee.dao;

import org.springframework.stereotype.Repository;

import com.sillasys.user.employee.vo.ContractVO;
import egovframework.rte.psl.dataaccess.EgovAbstractMapper;

@Repository("ContractDAO")
public class ContractDAO extends EgovAbstractMapper{
	public void trmTemplate1(ContractVO param) throws Exception{
		 insert("ContractDAO.trmTemplate1", param);
		
	}
	
	public void trmTemplate2(ContractVO param) throws Exception{
		 insert("ContractDAO.trmTemplate2", param);
	}
	
	 public void trmTemplate3(ContractVO param) throws Exception{
	       insert("ContractDAO.trmTemplate3", param);
	   }
	   
	   public void trmTemplate4(ContractVO param) throws Exception{
	       insert("ContractDAO.trmTemplate4", param);
	   }

	
	public void trmTemplateWork(ContractVO param) throws Exception{
		 insert("ContractDAO.trmTemplateWork", param);
		
	}
	
	public void trmTemplateStWork(ContractVO param) throws Exception{
	       insert("ContractDAO.trmTemplateStWork", param);
	      
	   }

	
	public void trmTemplateEnd(ContractVO param) throws Exception{
		 insert("ContractDAO.trmTemplateEnd", param);
		
	}
	
	public void trmTemplateBenefit(ContractVO param) throws Exception{
		 insert("ContractDAO.trmTemplateBenefit", param);
		
	}
	
	public void goDelete1(ContractVO param) throws Exception{
		 delete("ContractDAO.goDelete1", param);
		
	}
	
	
	
	
}
