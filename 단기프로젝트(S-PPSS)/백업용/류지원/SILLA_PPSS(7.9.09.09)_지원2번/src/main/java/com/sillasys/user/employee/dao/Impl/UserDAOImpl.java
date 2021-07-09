package com.sillasys.user.employee.dao.Impl;

@Override
public int idChk(UserVO param) throws Exception {
	int result = sql.selectOne("userMapper.idChk", vo);
	return result;
}