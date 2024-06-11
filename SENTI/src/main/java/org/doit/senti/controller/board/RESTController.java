package org.doit.senti.controller.board;

import java.util.List;

import javax.servlet.http.HttpSession;

import org.doit.senti.domain.board.BoardVO;
import org.doit.senti.domain.board.ProductLikeDTO;
import org.doit.senti.mapper.BoardMapper;
import org.doit.senti.service.board.LikeService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.MediaType;
import org.springframework.web.bind.annotation.DeleteMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import lombok.extern.log4j.Log4j;

@RestController
@Log4j
@RequestMapping("/product/*")
public class RESTController {
	
	@Autowired
	private BoardMapper boardMapper ;
	
	// @DeleteMapping
	
	@Autowired
	private LikeService likeService;
	
	@PostMapping(value = "/men_ci.do"
			,produces = {					
			MediaType.APPLICATION_JSON_UTF8_VALUE
			
	})
	public List<BoardVO> selectByMediumCtgrId(@RequestBody BoardVO boardvo) {
		
		return this.boardMapper.selectByMediumCtgrId(boardvo.getMediumCtgrId());
	}
	
	@PostMapping(value = "/men_si.do"
			,produces = {					
			MediaType.APPLICATION_JSON_UTF8_VALUE
			
	})
	public List<BoardVO> selectBySmallCtgrId(@RequestBody BoardVO boardvo) {

		return this.boardMapper.selectBySmallCtgrId(boardvo.getSmallCtgrId());
	}
	
	@PostMapping(value = "/men_oi.do"
			,produces = {					
			MediaType.APPLICATION_JSON_UTF8_VALUE
			
	})
	public List<BoardVO> selectBylargeCtgrId(@RequestBody BoardVO boardvo) {

		return this.boardMapper.selectBylargeCtgrId(boardvo.getLargeCtgrId());
	}
	
	@PostMapping("/addlike.do")
	public void addLike(
			@RequestBody BoardVO bvo,
			HttpSession session) throws Exception {
        
		System.out.println("addLikeController : " + bvo.getPdId());
		ProductLikeDTO likeDTO = new ProductLikeDTO();
		likeDTO.setPdId(bvo.getPdId());
		likeDTO.setMemberId("jindol@naver.com"); // 나중에 세션에서 가져와야함
		
		likeService.insertProductLike(likeDTO);
		
    }
	
	@PostMapping("/removelike.do")
	public void removeLike(
			@RequestBody BoardVO bvo) throws Exception {
		
		System.out.println("removeLikeController : " + bvo.getPdId());
		ProductLikeDTO likeDTO = new ProductLikeDTO();
		likeDTO.setPdId(bvo.getPdId());
		likeDTO.setMemberId("jindol@naver.com");
		
		likeService.deleteProductLike(likeDTO);
		
	}
	
	 
	
	
}///
