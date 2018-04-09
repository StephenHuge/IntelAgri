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

import main.java.agriculture.intel.dao.AdministratorInfoDao;
import main.java.agriculture.intel.model.AdministratorInfo;

@Controller
@RequestMapping("/admins")
public class AdminController {
	private AdministratorInfoDao administratorInfoDao;
	
	@Autowired
	public AdminController(AdministratorInfoDao administratorInfoDao) {
		this.administratorInfoDao = administratorInfoDao;
	}

	
	@RequestMapping(method=RequestMethod.GET)
	public String showAllAdmins(ModelMap modelMap) {
		List<AdministratorInfo> admins = administratorInfoDao.getAllAdministratorInfo();
		modelMap.addAttribute("admins", admins);
		return "admins/allAdmins";
	}
	@RequestMapping("/{name}")
	public String showAdmin(@PathVariable String name, Model model) {
		AdministratorInfo admin = administratorInfoDao.load(administratorInfoDao.getIdByName(name));
		model.addAttribute("admin", admin);
		return "admins/profile";
	}
	@RequestMapping("/addAdmin")
	public String addAdmin() {
		return "admins/registerForm";
	}
	@RequestMapping(value="/addAdmin", method=RequestMethod.POST)
	public String addAdmin(AdministratorInfo administratorInfo) {
		administratorInfoDao.addAdministratorInfo(administratorInfo);
		return "redirect:/admins";
	}
	@RequestMapping("/updateAdmin/{name}")
	public String updateAdmin(@PathVariable String name, Model model) {
		AdministratorInfo admin = administratorInfoDao.load(administratorInfoDao.getIdByName(name));
		model.addAttribute("admin", admin);
		return "admins/updatePage";
	}
	@RequestMapping(value="/updateAdmin/{name}", method=RequestMethod.POST)
	public String updateAdmin(AdministratorInfo administratorInfo) {
		administratorInfoDao.updateAdministratorInfo(administratorInfo);
		return "redirect:/admins";
	}
	@RequestMapping("/delAdmin/{name}")
	public String delAdmin(@PathVariable String name) {
		
		administratorInfoDao.delAdministratorInfo(administratorInfoDao.getIdByName(name));
		return "redirect:/admins";
	}
	@InitBinder  
	public void initBinder(WebDataBinder binder) {  
	    SimpleDateFormat dateFormat = new SimpleDateFormat("yyyy-MM-dd");  
	    dateFormat.setLenient(false);  
	    binder.registerCustomEditor(Date.class, new CustomDateEditor(dateFormat, true));  
	}
}
