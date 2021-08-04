package com.sillasys.admin.service;


import com.sillasys.admin.vo.AdminVO;

import egovframework.rte.psl.dataaccess.util.EgovMap;

public interface AdminService {
	
	public EgovMap selectAdmin(AdminVO param) throws Exception;
}
