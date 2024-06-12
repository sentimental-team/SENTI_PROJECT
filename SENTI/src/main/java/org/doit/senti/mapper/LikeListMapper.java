package org.doit.senti.mapper;

import java.util.List;

import org.doit.senti.domain.board.LikeListDTO;


public interface LikeListMapper {
	
	List<LikeListDTO> getLikeList(String loginMemberId);
	
	String selectMemberName(String loginMemberId);
	
}
