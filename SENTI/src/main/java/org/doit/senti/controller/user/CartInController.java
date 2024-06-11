package org.doit.senti.controller.user;

import java.util.List;

import org.doit.senti.domain.user.CartDTO;
import org.doit.senti.mapper.CartMapper;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import lombok.extern.log4j.Log4j;

@Controller
@Log4j
@RequestMapping("/user/*")
public class CartInController {
	
	@Autowired
	private CartMapper cartMapper;
	
	@GetMapping("/cart.do")
	public String cart(Model model) throws Exception{
		log.info("> CartController.cartList() ... ");
		List<CartDTO> list = this.cartMapper.getCart(); 
		model.addAttribute("list", list);
		
		
		return "user/cart.jsp";
	}
	
	//@PostMapping()
}
