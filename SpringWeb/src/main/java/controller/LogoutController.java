package controller;

import java.text.SimpleDateFormat;
import java.util.Calendar;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

@Controller
// 난 컨트롤러다. 하고 스프링한테 알려쥼
public class LogoutController {

	@RequestMapping("/logout.html")
	// index.html이라는 주문이 들어오면 일루오셈 웬만하면 jsp로 주지마세요..
	public ModelAndView handleRequest(HttpServletRequest req,
			HttpServletResponse res) throws Exception {
		ModelAndView modelAndView = new ModelAndView();

		HttpSession session = req.getSession();
		session.setAttribute("user", null);
		session.invalidate();
		
		// View 만들기(정의)
		modelAndView.setViewName("redirect:/login.html"); // 뷰 이름을 index로 하셈
		// 경로는 web-inf/view/index.***
		
		return modelAndView;
		
	}
}
