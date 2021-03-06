package controller;

import java.text.SimpleDateFormat;
import java.util.Calendar;

import javax.servlet.http.HttpSession;

import logic.UserLogic;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import pbean.UserInfo;
import vbean.VUserInfo;

@Controller
@RequestMapping("login.html")
public class LogicController {
   @Autowired
   private UserLogic userLogic;

   public void setUserLogic(UserLogic userLogic) {
      this.userLogic = userLogic;
   }
   
   @RequestMapping(method=RequestMethod.GET)
   public String toLoginView(Model model)
   {
      //현재시간
            String timestamp =
                  new SimpleDateFormat("yyyyMMdd HHmmss")
                     .format(Calendar.getInstance().getTime());
      model.addAttribute("now", timestamp);
      model.addAttribute("loginForm", new VUserInfo());
      
      
      
      
      return "index";
   }
   
   @RequestMapping(method=RequestMethod.POST)
   public String onSubmit(@ModelAttribute VUserInfo formModel,
		   HttpSession session, Model model)
   {
	UserInfo logingUser = this.userLogic.login(formModel);
	if(this.userLogic.login(formModel)==null) {
		return "redirect:/login.html";
	}else{
		session.setAttribute("user", logingUser);
		return "main"; //메인 화면으로 이동   
	}

   }

}



