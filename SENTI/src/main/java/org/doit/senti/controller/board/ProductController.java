package org.doit.senti.controller.board;

import java.io.File;
import java.sql.SQLException;
import java.util.List;
import java.util.UUID;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.doit.senti.domain.board.ProductImageDTO;
import org.doit.senti.domain.board.ProductRegisterDTO;
import org.doit.senti.mapper.ProductRegisterMapper;
import org.doit.senti.mapper.ReviewMapper;
import org.doit.senti.service.board.BoardService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;

import lombok.AllArgsConstructor;
import lombok.extern.log4j.Log4j;

@Controller
@Log4j
@RequestMapping("/product/*")
@AllArgsConstructor
public class ProductController {
	

	@Autowired
	private ProductRegisterMapper productRegister;
	
	@Autowired
	private BoardService boardService;

	@Autowired
	private ReviewMapper reviewMapper;
	


	@GetMapping("/productRegister.do")
	public String productReg(HttpSession session) throws Exception{

		return "product/productRegister.jsp";
	}

	private String getFileUuidName(String uploadRealPath, String originalFileName) {
		UUID uuid = UUID.randomUUID();

		String fileName = originalFileName.substring(0, originalFileName.length() - 4);
		String ext = originalFileName.substring(originalFileName.length() - 4);
		String fileUuidName = fileName + "-" + uuid + ext;

		return fileUuidName;

	}
	//	@PostMapping("/productRegister.do")
	//	public String productReg() throws Exception{
	//		
	//		//System.out.println(">>>>>>>" + pdDTO);
	//		System.out.println(">>>>>>>" );
	//		
	////		  ProductRegisterDTO pdDTO
	////			, ProductImageDTO pdImageDTO
	////			, HttpServletRequest request
	//			return "main.jsp";
	//		 
	//	}


	@PostMapping("/productRegister.do")
	public String productReg( ProductRegisterDTO pdDTO
						, ProductImageDTO pdImageDTO
						, HttpServletRequest request ) throws Exception{ 
		
		    List<MultipartFile> pdImageList = pdImageDTO.getPdImageList();
		    MultipartFile pdInfoImage = pdImageDTO.getPdInfoImage();
		    String uploadRealPath = null;
		    String uploadRealPath2 = null;
		    
		    int rowCount = this.productRegister.insertProduct(pdDTO);
		    
			System.out.println(">>>>>>>>>" + pdImageList);
			for(MultipartFile pdImage : pdImageList) {
				if(!pdImage.isEmpty()) {

					uploadRealPath = request.getServletContext().getRealPath("/upload");

					log.info("orginalFilename : " + pdImage.getOriginalFilename());
					log.info("file_size : " + pdImage.getSize());
					log.info("uploadRealPath : " + uploadRealPath);

					String originalImageFilename = pdImage.getOriginalFilename();
					String fileSystemname = getFileUuidName(uploadRealPath, originalImageFilename);

					File dest1 = new File(uploadRealPath, fileSystemname);
					pdImage.transferTo(dest1);
					pdImageDTO.setPdImageUrl(fileSystemname);
					pdImageDTO.setPdImageUuid(uploadRealPath);
					
					rowCount = this.productRegister.insertProductImg(pdImageDTO);
					
					
					
				} 
				
				
			}
			
			if(!pdInfoImage.isEmpty()) {

				uploadRealPath2 = request.getServletContext().getRealPath("/upload");

				log.info("orginalFilename : " + pdInfoImage.getOriginalFilename());
				log.info("file_size : " + pdInfoImage.getSize());
				log.info("uploadRealPath2 : " + uploadRealPath2);

				String originalInfoImageFilename = pdInfoImage.getOriginalFilename();
				String InfofileSystemname = getFileUuidName(uploadRealPath2, originalInfoImageFilename);

				File dest2 = new File(uploadRealPath2, InfofileSystemname);
				pdInfoImage.transferTo(dest2);
				pdImageDTO.setPdInfoImageUrl(InfofileSystemname);
				pdImageDTO.setPdImageInfoUuid(uploadRealPath2);
				

			}
			
			rowCount = this.productRegister.insertProductImgInfo(pdImageDTO);
			
			if (rowCount >= 1) { 
				return "main.jsp"; 
			} 
			else { 
				return "product/productRegister.jsp?error"; 
			}

	}
	

	
	/*
	 * @GetMapping("/men_mi.do") public void list(Model
	 * model,@RequestParam("medium_ctgr_id") int medium_ctgr_id) {
	 * log.info("> BoardController.list()..."); model.addAttribute("list",
	 * this.boardService.getList(medium_ctgr_id));
	 * 
	 * }//list
	 */	  
	  
	 
	@GetMapping("/men.do")
	public String listup(HttpSession session, Model model,@RequestParam("large_ctgr_id") int large_ctgr_id, @RequestParam("medium_ctgr_id") int medium_ctgr_id) throws Exception{
		
		log.info("> BoardController.list()...");
	      model.addAttribute("mList",this.boardService.mList(large_ctgr_id));
	      model.addAttribute("list",  this.boardService.getList(medium_ctgr_id));
	      model.addAttribute("lList",this.boardService.lList(large_ctgr_id));
	      
		return "product/men.jsp";
		
	}
	
	@GetMapping("/viewDetail.do")
	public String viewDetail(HttpSession session, Model model,@RequestParam("pd_id") int pd_id ) throws ClassNotFoundException, SQLException {
		System.out.println(">>>>>> pd_id : "+ pd_id);
		
		log.info("> BoardController2.list()...");
		
		model.addAttribute("pDetail", this.boardService.get(pd_id));
		model.addAttribute("iDetail", this.boardService.getInfoImage(pd_id));
		model.addAttribute("reviewCount", this.reviewMapper.reviewCount(pd_id));
		model.addAttribute("reviews", this.reviewMapper.getReviews(pd_id));
		
		return "product/viewDetail.jsp";  
	}	


} // class
