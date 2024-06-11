package org.doit.senti.mapper;

import java.util.List;

import org.doit.senti.domain.user.CartDTO;

public interface CartMapper {
	
	// 장바구니 담기
	public int insertCart(CartDTO cartDTO) throws Exception;
	
	// 장바구니 조회
	List<CartDTO> getCart();
	
	// 장바구니 삭제
	public int deleteCart(int cartId) throws Exception;
	
	
}
