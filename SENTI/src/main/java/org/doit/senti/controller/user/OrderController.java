package org.doit.senti.controller.user;

import java.util.List;

import org.doit.senti.domain.user.CartDTO;
import org.doit.senti.mapper.OrderMapper;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import lombok.extern.log4j.Log4j;

@Controller
@Log4j
@RequestMapping("/user/*")
public class OrderController {
	
	@Autowired
	private OrderMapper orderMapper;
	
	@GetMapping("/order.do")
	public String getCart(Model model) throws Exception {
		log.info(">>>>>>>>> OrderController.getOrder() <<<<<<<<<<");
		List<CartDTO> list = this.orderMapper.getOrder();
		
		model.addAttribute("list", list);
		
		return "/user/order.do";
	}
}
