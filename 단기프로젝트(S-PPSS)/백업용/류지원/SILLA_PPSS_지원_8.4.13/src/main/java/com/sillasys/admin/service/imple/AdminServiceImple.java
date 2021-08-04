package com.sillasys.admin.service.imple;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import com.sillasys.admin.dao.AdminDAO;
import com.sillasys.admin.service.AdminService;
import com.sillasys.admin.vo.AdminVO;

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
