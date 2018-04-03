package main.java.agriculture.intel.controller;

import java.util.List;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import main.java.agriculture.intel.model.AdministratorInfo;
import main.java.agriculture.intel.service.AdministratorInfoService;

@Controller
public class UserController {
	
	private AdministratorInfoService administratorInfoService; 
	
	/**
	 * 访问项目名默认直接跳转到index.jsp 
	 */
	@RequestMapping(value = "/", method = RequestMethod.GET)
	public String welcomePage(Model model) {
	    return "index";
	}
	@RequestMapping(value="/addAdministrator", method=RequestMethod.GET)
	public String addAdministrator(Model model) {
		model.addAttribute("adminInfo", new AdministratorInfo());
		return "addAdmin";
	}
	@RequestMapping(value="/addAdministrator", method=RequestMethod.POST)
	public String addAdministrator(AdministratorInfo adminInfo, Model model) {
		model.addAttribute("adminInfo", adminInfo);
		administratorInfoService.addAdministratorInfo(adminInfo);
		return "allAdministrators";
	}
	
	@RequestMapping("/allAdministrators")
	public String getAllAdministrators(ModelMap modelMap) {
		List<AdministratorInfo> adminList = administratorInfoService.getAllAdministratorInfo();
		modelMap.addAttribute(adminList);
		return "administrators";
	}
	
}
