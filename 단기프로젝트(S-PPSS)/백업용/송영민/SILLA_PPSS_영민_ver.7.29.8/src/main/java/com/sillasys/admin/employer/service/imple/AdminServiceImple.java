package com.sillasys.admin.employer.service.imple;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import com.sillasys.admin.employer.dao.AdminDAO;
import com.sillasys.admin.employer.service.AdminService;
import com.sillasys.admin.employer.vo.AdminVO;

import egovframework.rte.psl.dataaccess.util.EgovMap;


@Service("adminService")
public class AdminServiceImple implements AdminService{
	
	@Resource(name = "adminDAO")
	private AdminDAO adminDAO;

	@Override
	public EgovMap selectAdmin(AdminVO param) throws Exception {

		return adminDAO.selectAdmin(param);
	}
	
	
	
	
	

}
