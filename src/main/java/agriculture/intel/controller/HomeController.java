package main.java.agriculture.intel.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
public class HomeController {
	
	/**
	 * 访问项目名默认直接跳转到主页
	 */
	@RequestMapping(value = "/", method = RequestMethod.GET)
	public String welcomePage(Model model) {
	    return "redirect:/admins";
	}
	
}
