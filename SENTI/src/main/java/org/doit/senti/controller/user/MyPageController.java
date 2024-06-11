package org.doit.senti.controller.user;

import java.sql.SQLException;

import javax.servlet.http.HttpSession;

import org.doit.senti.controller.board.ProductController;
import org.doit.senti.domain.board.BoardVO;
import org.doit.senti.domain.board.ProductLikeDTO;
import org.doit.senti.mapper.LikeMapper;
import org.doit.senti.mapper.ProductRegisterMapper;
import org.doit.senti.service.board.BoardService;
import org.doit.senti.service.board.LikeService;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestAttribute;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import lombok.AllArgsConstructor;
import lombok.extern.log4j.Log4j;

@Controller
@Log4j
@RequestMapping("/user/*")
@AllArgsConstructor
public class MyPageController {
	
	private LikeService likeService;
	
	@GetMapping("/mypage.do")
	public String myPage(HttpSession session) throws Exception{

		return "user/mypage.jsp";
	}
	
	@GetMapping("/mylike.do")
	public String myLike(HttpSession session) throws Exception{

		return "user/mylike.jsp";
	}
	
	
}
