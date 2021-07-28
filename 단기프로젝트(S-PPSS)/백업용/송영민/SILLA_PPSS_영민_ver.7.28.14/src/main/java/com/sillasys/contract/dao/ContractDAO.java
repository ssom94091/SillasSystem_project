package com.sillasys.contract.dao;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;
import org.springframework.stereotype.Repository;

import com.sillasys.contract.vo.ContractBenefitVO;
import com.sillasys.contract.vo.ContractEndVO;
import com.sillasys.contract.vo.ContractVO;
import com.sillasys.contract.vo.ContractWorkVO;

import egovframework.rte.psl.dataaccess.EgovAbstractMapper;
import egovframework.rte.psl.dataaccess.util.EgovMap;


@Repository("contractDAO")
public class ContractDAO extends EgovAbstractMapper{
	SqlSessionFactory    sqlSessionFactory;
	int noOfRecords;
	
	public List<EgovMap> selectList(ContractVO vo){
		System.out.println("리스트 전체검색");
		return selectList("contractDAO.selectList", vo);
	}
	public List<EgovMap> selectContractList(ContractVO vo){
		return selectList("contractDAO.selectContractList", vo);
	}
	/*이름으로 검색*/
	public List<EgovMap> searchNameContractList(ContractVO vo){
		System.out.println("리스트 이름검색");
		return selectList("contractDAO.searchNameContractList", vo);
	}
	/*타입으로 검색*/
	public List<EgovMap> searchTypeContractList(ContractVO vo){
		System.out.println("리스트 유형검색");
		return selectList("contractDAO.searchTypeContractList", vo);
	}
	/*업무내용으로 검색*/
	public List<EgovMap> searchContentContractList(ContractVO vo){
		System.out.println("리스트 업무내용검색");
		return selectList("contractDAO.searchContentContractList", vo);
	}
	
	public EgovMap trmTemplate(ContractVO param) throws Exception {
		insert("contractDAO.trmTemplate", param);
		return selectOne("contractDAO.resultpk",param);
	}
	
	public EgovMap adminTemplate(ContractVO param) throws Exception {
		return selectOne("contractDAO.admin",param);
	}
	
	public EgovMap userTemplate(ContractVO param) throws Exception {
		return selectOne("contractDAO.user",param);
	}

	public void trmTemplateWork(ContractWorkVO param) throws Exception {
		insert("contractDAO.trmTemplateWork", param);
	}

	public void trmTemplateEnd(ContractEndVO param) throws Exception {
		insert("contractDAO.trmTemplateEnd", param);
	}

	public void trmTemplateBenefit(ContractBenefitVO param) throws Exception {
		insert("contractDAO.trmTemplateBenefit", param);
	}

	public void delTemplate(ContractVO param) throws Exception {
		delete("contractDAO.delTemplate", param);
	}

	public void delTemplateWork(ContractWorkVO param) throws Exception {
		delete("contractDAO.delTemplateWork", param);
	}

	public void delTemplateEnd(ContractEndVO param) throws Exception {
		delete("contractDAO.delTemplateEnd", param);
	}

	public void delTemplateBenefit(ContractBenefitVO param) throws Exception {
		delete("contractDAO.delTemplateBenefit", param);
	}
	
	/* 페이징 */
	public void ContractDao(SqlSessionFactory sqlSessionFactory) {
       this.sqlSessionFactory = sqlSessionFactory;
    }
	 public int getNoOfRecords() {
	        return noOfRecords;
	    }
	 
	public List<EgovMap> selectAll(int offset, int noOfRecords) {
	        List<EgovMap> result = new ArrayList<EgovMap>();
	        System.out.println("여기까지성공");
	        
	        SqlSession session = sqlSessionFactory.openSession();   /*여기서 오류발생*/
				System.out.println(session);
			
	        System.out.println("두번째까지성공");
	        HashMap<String, Object> params = new HashMap<String, Object>();
	 
	        params.put("offset", offset);
	        params.put("noOfRecords", noOfRecords);        
	        
	        try {
	        	result = session.selectList("contractDAO.selectAll", params);
	            this.noOfRecords = session.selectOne("contractDAO.selectTotalRecords");
	            
	            
	        } finally {
	            session.close();
	        }
	       
	        return result;
	    }
	public EgovMap searchType1(ContractVO vo) {
	
		return selectOne("contractDAO.searchType1",vo);
	}
	public EgovMap searchType2(ContractVO vo) {
		return selectOne("contractDAO.searchType12",vo);
	}
	public EgovMap searchType3(ContractVO vo) {
		return selectOne("contractDAO.searchType3",vo);
	}
	public EgovMap searchType4(ContractVO vo) {
		return selectOne("contractDAO.searchType4",vo);
	}

	
}
