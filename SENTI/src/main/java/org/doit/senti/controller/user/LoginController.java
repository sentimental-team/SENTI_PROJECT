package org.doit.senti.controller.user;

import org.doit.senti.domain.user.MemberVO;
import org.doit.senti.service.user.LoginService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import lombok.extern.log4j.Log4j;

@Controller
@RequestMapping("/signUp/*")
@Log4j
public class LoginController {
	
	@Autowired
    private LoginService loginService;

    @PostMapping("/login.do")
    public ModelAndView login(@RequestParam("username") String username,
                              @RequestParam("password") String password) {
        MemberVO member = loginService.login(username, password);
        ModelAndView mav = new ModelAndView();
        
        if (member != null) {
            mav.setViewName("/main.do");
        } else {
            mav.setViewName("redirect:/signUp/login.do?error=true");
        }

        return mav;
    }
}