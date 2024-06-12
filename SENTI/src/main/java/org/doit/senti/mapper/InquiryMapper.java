package org.doit.senti.mapper;

import java.sql.SQLException;
import java.util.List;

import org.apache.ibatis.annotations.Delete;
import org.doit.senti.domain.board.InquiryVO;

public interface InquiryMapper {
		
		// 문의내역 삭제하는 메서드
		public int delete(String inquiryId) throws ClassNotFoundException, SQLException;		
		
		// 문의내역 추가하는 메서드
		public int insert(InquiryVO inquiry) throws ClassNotFoundException, SQLException;

		// 문의내역의 목록을 List 컬렉션으로 반환하는 메서드		
		public List<InquiryVO> getInquirys(String memberId) throws ClassNotFoundException, SQLException;
		
		// 트랜잭션 처리를 위한 메서드 추가
		// public void insertAndPointUpOfMember(NoticeVO notice, String id) throws ClassNotFoundException, SQLException;
		
	}

