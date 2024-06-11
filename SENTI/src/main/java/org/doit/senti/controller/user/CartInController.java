package org.doit.senti.controller.user;

import java.util.List;

import javax.servlet.http.HttpSession;

import org.doit.senti.domain.user.CartDTO;
import org.doit.senti.mapper.CartMapper;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import lombok.extern.log4j.Log4j;

@Controller
@Log4j
@RequestMapping("/user/*")
public class CartInController {
	
	@Autowired
	private CartMapper cartMapper;
	
	/* memberId값을 받아오면 주석 해제
	@GetMapping("/cart.do")
	public String cart(Model model, @RequestParam("memberId") int memberId) throws Exception{
		log.info("> CartController.cartList() ... member_id = " + memberId);
		List<CartDTO> list = this.cartMapper.getCart(memberId); 
		model.addAttribute("list", list);
		
		return "user/cart.jsp";
	}
	*/
	
	// 장바구니 조회
	@GetMapping("/cart.do")
	public String cart(Model model) throws Exception{
		log.info("> CartController.cartList() ... ");
		List<CartDTO> list = this.cartMapper.getCart(); 
		
		model.addAttribute("list", list);
		
		return "user/cart.jsp";
	}
	
	// 장바구니 선택 삭제
	@PostMapping("/cartDel.do")
	public String deleteSelectCart(@RequestParam("cartIdList") List<Integer> cartIdList) throws Exception{
		log.info("> CartController.cartDel() ... ");
		
		cartMapper.deleteSelectCart(cartIdList);
		
		return "redirect:/user/cart.do";
	}
	
	// 장바구니 개별 삭제
	@GetMapping("/cartDel.do")
	public String deleteCart(@RequestParam("cart_id") int cartId) throws Exception{
		log.info("> CartController.cartDel() ... ");
		
		cartMapper.deleteCart(cartId);
		
		return "redirect:/user/cart.do";
	}
	
	// 주문 페이지로 이동
	@GetMapping("/order.do")
	public String order(HttpSession httpSession) throws Exception{
		
		return "/user/order.jsp";
	}
	
	
	/*
	// 장바구니 수량 수정
	// 미구현...
	@PostMapping("/cartUpd.do")
	@ResponseBody
	public int updateCartStock(Model model, CartDTO cartDTO, @RequestParam("cartId") int cartId, @RequestParam("stock") int stock) throws Exception{
		cartDTO = cartMapper.updateCartStock(cartId, stock);
		
		int updatePrice = cartDTO.getPdPrice() * stock;
		
		return updatePrice;
	}
	*/
}
