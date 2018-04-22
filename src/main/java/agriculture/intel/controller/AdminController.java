package main.java.agriculture.intel.controller;

import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.propertyeditors.CustomDateEditor;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.WebDataBinder;
import org.springframework.web.bind.annotation.InitBinder;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import main.java.agriculture.intel.service.AdministratorInfoService;
import main.java.agriculture.intel.model.AdministratorInfo;

@Controller
@RequestMapping("/admins")
public class AdminController {
	private AdministratorInfoService administratorInfoService;
	
	@Autowired
	public AdminController(AdministratorInfoService administratorInfoService) {
		this.administratorInfoService = administratorInfoService;
	}

	@RequestMapping(method=RequestMethod.GET)
	public String showAllAdmins(ModelMap modelMap) {
		List<AdministratorInfo> admins = administratorInfoService.getAllAdministratorInfo();
		modelMap.addAttribute("admins", admins);
		return "admins/allAdmins";
	}
	@RequestMapping("/{jobId}")
	public String showAdmin(@PathVariable int jobId, Model model) {
		AdministratorInfo admin = administratorInfoService.load(jobId);
		model.addAttribute("admin", admin);
		return "admins/profile";
	}
	@RequestMapping("/addAdmin")
	public String addAdmin() {
		return "admins/registerForm";
	}
	@RequestMapping(value="/addAdmin", method=RequestMethod.POST)
	public String addAdmin(AdministratorInfo administratorInfo) {
		administratorInfoService.addAdministratorInfo(administratorInfo);
		return "redirect:/admins";
	}
	@RequestMapping("/updateAdmin/{jobId}")
	public String updateAdmin(@PathVariable int jobId, Model model) {
		AdministratorInfo admin = administratorInfoService.load(jobId);
		model.addAttribute("admin", admin);
		return "admins/updatePage";
	}
	@RequestMapping(value="/updateAdmin/{jobId}", method=RequestMethod.POST)
	public String updateAdmin(AdministratorInfo administratorInfo) {
		administratorInfoService.updateAdministratorInfo(administratorInfo);
		return "redirect:/admins";
	}
	@RequestMapping("/delAdmin/{jobId}")
	public String delAdmin(@PathVariable int jobId) {
		
		administratorInfoService.delAdministratorInfo(jobId);
		return "redirect:/admins";
	}
	@InitBinder  
	public void initBinder(WebDataBinder binder) {  
	    SimpleDateFormat dateFormat = new SimpleDateFormat("yyyy-MM-dd");  
	    dateFormat.setLenient(false);  
	    binder.registerCustomEditor(Date.class, new CustomDateEditor(dateFormat, true));  
	}
}
