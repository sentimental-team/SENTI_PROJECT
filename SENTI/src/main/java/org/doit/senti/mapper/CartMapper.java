package org.doit.senti.mapper;

import java.util.List;

import org.doit.senti.domain.user.CartDTO;
import org.springframework.web.bind.annotation.RequestParam;

public interface CartMapper {
	
	// 장바구니 조회
	/* List<CartDTO> getCart(@RequestParam("memberId") int memberId); */
	
	List<CartDTO> getCart();
	
	// 장바구니 선택 삭제
	public int deleteSelectCart(@RequestParam("cartIdList") List<Integer> cartIdList) throws Exception;
	
	// 장바구니 개별 삭제
	public int deleteCart(@RequestParam("cart_id") int cartId) throws Exception;
	
	// 장바구니 수량 수정
	public CartDTO updateCartStock(@RequestParam("cartId") int cartId, @RequestParam("stock") int stock) throws Exception;
	
}
