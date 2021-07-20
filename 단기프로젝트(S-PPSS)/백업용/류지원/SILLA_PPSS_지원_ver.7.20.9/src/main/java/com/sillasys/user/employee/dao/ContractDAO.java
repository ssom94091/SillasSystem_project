package com.sillasys.user.employee.dao;

import org.springframework.stereotype.Repository;

import com.sillasys.user.employee.vo.ContractVO;
import com.sillasys.user.employee.vo.ContractWorkTimeVO;
import com.sillasys.user.employee.vo.ContractEndTimeVO;
import com.sillasys.user.employee.vo.ContractBenefitVO;

import egovframework.rte.psl.dataaccess.EgovAbstractMapper;

@Repository("ContractDAO")
public class ContractDAO extends EgovAbstractMapper{
	public void trmTemplate1(ContractVO param) throws Exception{
		 insert("ContractDAO.trmTemplate1", param);
		
	}
	
	public void trmTemplate2(ContractVO param) throws Exception{
		 insert("ContractDAO.trmTemplate2", param);
	}
	
	public void trmTemplateWork(ContractVO param) throws Exception{
		 insert("ContractDAO.trmTemplateWork", param);
		
	}
	
	public void trmTemplateEnd(ContractVO param) throws Exception{
		 insert("ContractDAO.trmTemplateEnd", param);
		
	}
	
	public void trmTemplateBenefit(ContractVO param) throws Exception{
		 insert("ContractDAO.trmTemplateBenefit", param);
		
	}
	
}
