package org.doit.senti.mapper;

import org.apache.ibatis.annotations.Select;
import org.doit.senti.domain.user.MemberVO;

public interface SignUpMapper {
	
	// 회원가입
	void insert(MemberVO member);
	
	// 아이디 중복확인
	int dupliId(String memeberId);
	
	
	
}
