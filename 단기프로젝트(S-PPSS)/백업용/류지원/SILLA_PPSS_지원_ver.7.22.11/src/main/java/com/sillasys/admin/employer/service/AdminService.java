package com.sillasys.admin.employer.service;

import java.util.List;

import com.sillasys.admin.employer.vo.AdminVO;

import egovframework.rte.psl.dataaccess.util.EgovMap;

public interface AdminService {
	
	public EgovMap selectAdmin(AdminVO param) throws Exception;
}
