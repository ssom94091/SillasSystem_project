package com.sillasys.admin.ec.service.imple;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import com.sillasys.admin.ec.dao.EcDVO;
import com.sillasys.admin.ec.service.EcService;
import com.sillasys.admin.ec.vo.EcVO;

@Service("ecService")
public class EcServiceImple implements EcService{
	
	@Resource(name = "ecDAO")
	private EcDVO ecDAO;
	
	
	@Override
	public void insertEcInfo(EcDVO param)  throws Exception{
		ecDAO.insertEcInfo(param);
	}

}
