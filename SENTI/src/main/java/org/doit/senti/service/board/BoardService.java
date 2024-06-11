package org.doit.senti.service.board;

import java.util.List;

import org.doit.senti.domain.board.BoardVO;
import org.doit.senti.domain.board.PagingVO;

public interface BoardService {

	List<BoardVO> getList(int medium_ctgr_id);
	
	BoardVO get(int pd_id);
	
	
	/*
	void register(BoardVO board);
	BoardVO get(Long bno);
	boolean modify(BoardVO board);
	boolean remove(Long bno);
	*/

	List<BoardVO> mList(int large_ctgr_id);

	List<BoardVO> getInfoImage(int pd_id);

	BoardVO lList(int large_ctgr_id);

	List<BoardVO> getOption(int large_ctgr_id);
	
	// 게시물 총 갯수
	public int countBoard();

	// 페이징 처리 게시글 조회
	public List<BoardVO> selectBoard(PagingVO vo);
	
}
