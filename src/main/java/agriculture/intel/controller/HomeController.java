package main.java.agriculture.intel.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
public class HomeController {
	
	/**
	 * ������Ŀ��Ĭ��ֱ����ת����ҳ
	 */
	@RequestMapping(value = "/", method = RequestMethod.GET)
	public String welcomePage(Model model) {
	    return "redirect:/admins";
	}
	
}