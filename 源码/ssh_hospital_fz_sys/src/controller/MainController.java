package controller;

import javax.servlet.http.HttpServletRequest;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class MainController {
	@RequestMapping("/toMain.do")
	public String toMain(HttpServletRequest request)throws Exception{
		
		return "forward:/";
	}
}
