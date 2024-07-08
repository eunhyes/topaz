package com.topaz.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.topaz.service.LoginService;
import com.topaz.utill.Debug;

import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;
import lombok.extern.slf4j.Slf4j;

@Controller
@Slf4j
public class LoginController {
	
	@Autowired 
	LoginService loginService;

	/*
	 * 서비스명: LoginService
	 * 시작 날짜 : 2024-07-07
	 * 담당자: 한은혜
	 */

	// 로그인 페이지 매핑
	@GetMapping("/groupware/login")
	public String loginCon() {
		
		return "/groupware/login";
	}
	
	// 메인페이지 매핑
	@GetMapping("/groupware/empMain")
	public String empMain() {
		
		return "/groupware/empMain";
	}
	
	 // 로그인
	@PostMapping("/loginPost")
    public String loginPost(@RequestParam(name = "id") String strId,
                            @RequestParam(name = "pw") String strPw,
                            @RequestParam(name = "userType", required = false) String strUserType,
                            Model model,
                            HttpServletResponse rep,
                            HttpServletRequest req) {
        // 입력 값 디버깅
        log.debug(Debug.HEH + "strId : " + strId + Debug.END);
        log.debug(Debug.HEH + "strPw : " + strPw + Debug.END);
        log.debug(Debug.HEH + "userType : " + strUserType + Debug.END);
        
        String errMsg = "";
        
        // 직원 로그인
        if ("employee".equals(strUserType)) {
            errMsg = loginService.doEmpLogin(strId, strPw);
            
            if (errMsg == null) { // 로그인 성공
                HttpSession session = req.getSession();
                session.setAttribute("strId", strId);
                log.debug(Debug.HEH + "session : " + session + Debug.END);
                return "redirect:/groupware/empMain";
            }
          
        } else if ("outsourcing".equals(strUserType)) {
        // 외주업체 로그인
            errMsg = loginService.doOutsourcingLogin(strId, strPw);
            
            if (errMsg == null) { // 로그인 성공
                HttpSession session = req.getSession();
                session.setAttribute("strId", strId);
                log.debug(Debug.HEH + "session : " + session + Debug.END);
                return "redirect:/groupware/bpo/bpoMain";

            }
        } else if (strUserType == null || strUserType.isEmpty()) {
        // 선택을 안 했을 경우
            errMsg = "사용자 유형을 선택해주세요.";
        }
        
        model.addAttribute("errMsg", errMsg);
        return "/groupware/login";
    }

	
	
	
	
	
	
	
	
	
}