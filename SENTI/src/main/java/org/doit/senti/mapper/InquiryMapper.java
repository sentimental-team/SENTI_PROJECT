package org.doit.senti.mapper;

import java.sql.SQLException;
import java.util.List;

import org.doit.senti.domain.board.InquiryVO;

public interface InquiryMapper {
		/*
		 * // ���ǳ��� ���� ��ȯ�ϴ� �޼��� public int getCount(String field, String query) throws
		 * ClassNotFoundException, SQLException;
		 */
		
		/*
		 * // ���ǳ����� ����� List �÷������� ��ȯ�ϴ� �޼��� public List<InquiryVO> getInquirys ( int
		 * page // ���� ������ ��ȣ , String field // �˻����� , String query // �˻��� ) throws
		 * ClassNotFoundException, SQLException;
		 */
		
		// ���ǳ��� �����ϴ� �޼���
		public int delete(String inquiryId) throws ClassNotFoundException, SQLException;		
		
		// ���ǳ��� �߰��ϴ� �޼���
		public int insert(InquiryVO inquiry) throws ClassNotFoundException, SQLException;

		// ���ǳ����� ����� List �÷������� ��ȯ�ϴ� �޼���		
		public List<InquiryVO> getInquirys(String memberId) throws ClassNotFoundException, SQLException;
		
		// Ʈ����� ó���� ���� �޼��� �߰�
		// public void insertAndPointUpOfMember(NoticeVO notice, String id) throws ClassNotFoundException, SQLException;
		
	}
