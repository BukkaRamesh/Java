package com.testapp.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.testapp.domain.User;
import com.testapp.services.UserService;

@Controller
public class LoginController {
	
	
	@Autowired
	private UserService userService;
	
    @RequestMapping(value = "/login", method = RequestMethod.GET)
    public String init(Model model) {
        model.addAttribute("msg", "Please Enter Your Login Details");
        System.out.println("sample output");
        return "login";
    }
 
    @RequestMapping(method = RequestMethod.POST)
    public String submit(Model model, @ModelAttribute("user") User user , HttpServletRequest req) {
        if (user != null && user.getUserName() != null & user.getPassword() != null) {
            if (userService.authenticateUser(user)){
            		/*user.getUserName().equals("ram") && user.getPassword().equals("ram")) {*/
//                model.addAttribute("msg", "welcome   "  + user.getUserName());
            	HttpSession session = req.getSession(true);
            	session.setAttribute("username", "rahul");
            	User user1 = userService.getUserByName(user.getUserName());
                model.addAttribute("msg", "welcome   "  + user1.getFirstName() + "" + user1.getLastName());
                return "success";
            } else {
                model.addAttribute("error", "Invalid Details");
                return "login";
            }
        } else {
            model.addAttribute("error", "Please enter Details");
            return "login";
        }
    }
    
    @RequestMapping(value = "/success", method = RequestMethod.GET)
    public String getSuccess(Model model, HttpServletRequest req) {
    	String username = req.getParameter("username");
    	HttpSession session = req.getSession();
//    	model.addAttribute("msg", "welcome   "  + session.getAttribute("username"));
    	model.addAttribute("msg", "welcome   "  + username);
        return "success";
    }
    
}
