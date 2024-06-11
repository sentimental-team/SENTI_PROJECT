package org.doit.senti.controller.board;

import java.util.List;

import org.doit.senti.domain.board.BoardVO;
import org.doit.senti.mapper.BoardMapper;
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
	
	
	
	 
	
	
}///
