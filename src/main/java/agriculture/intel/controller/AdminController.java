package main.java.agriculture.intel.controller;

import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.List;

import javax.servlet.http.HttpSession;

import static org.springframework.web.bind.annotation.RequestMethod.*;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.propertyeditors.CustomDateEditor;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.WebDataBinder;
import org.springframework.web.bind.annotation.InitBinder;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.SessionAttributes;

import main.java.agriculture.intel.service.AdministratorInfoService;
import main.java.agriculture.intel.model.AdministratorInfo;

@Controller
@RequestMapping("/admins")
@SessionAttributes("loginUser")
public class AdminController {
	private AdministratorInfoService administratorInfoService;
	
	@Autowired
	public AdminController(AdministratorInfoService administratorInfoService) {
		this.administratorInfoService = administratorInfoService;
	}

	@RequestMapping(method=GET)
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
		return "admins/addForm";
	}
	@RequestMapping(value="/addAdmin", method=POST)
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
	@RequestMapping(value="/updateAdmin/{jobId}", method=POST)
	public String updateAdmin(AdministratorInfo administratorInfo) {
		administratorInfoService.updateAdministratorInfo(administratorInfo);
		return "redirect:/admins";
	}
	@RequestMapping("/delAdmin/{jobId}")
	public String delAdmin(@PathVariable int jobId) {
		
		administratorInfoService.delAdministratorInfo(jobId);
		return "redirect:/admins";
	}
	/**
	 * µÇÂ¼ºÍ×¢²á 
	 */
	@RequestMapping("/login")
	public String login() {
		return "common/loginPage";
	}
	@RequestMapping(value="/login", method=POST)
	public String login(AdministratorInfo administratorInfo, Model model) throws Exception {
		System.out.println("From form : " + administratorInfo.getName() + " - " + administratorInfo.getPassword());
		AdministratorInfo infoFromDB = administratorInfoService.load(
				administratorInfoService.getIdByName(administratorInfo.getName()));
		if (!(infoFromDB.getName().equals(administratorInfo.getName())) ||
				!(infoFromDB.getPassword().equals(administratorInfo.getPassword()))) {
			throw new Exception("µÇÂ¼Ê§°Ü£¡");
		}
		model.addAttribute("loginUser", infoFromDB);
		model.addAttribute("admin", infoFromDB);
		return "redirect:/admins";
	}
	@RequestMapping("/register")
	public String register() {
		return "common/registerForm";
	}
	@RequestMapping(value="/register", method=POST)
	public String register(AdministratorInfo administratorInfo) throws Exception {
		System.out.println(administratorInfo.getName() + " : " + administratorInfo.getPassword());
		if ((administratorInfo.getName().equals("")) 
				|| (administratorInfo.getName().equals("")) 
				|| (administratorInfo.getPassword() == null)
				|| (administratorInfo.getPassword().equals(""))) {
			throw new Exception("×¢²áÊ§°Ü£¡");
		} 
		administratorInfoService.addAdministratorInfo(administratorInfo);
		return "redirect:/admins";
	}
	@RequestMapping("/logout")
	public String logout(Model model, HttpSession session) {
		model.asMap().remove("loginUser");
		session.invalidate();
		return "redirect:/";
	}	
	@InitBinder  
	public void initBinder(WebDataBinder binder) {  
	    SimpleDateFormat dateFormat = new SimpleDateFormat("yyyy-MM-dd");  
	    dateFormat.setLenient(false);  
	    binder.registerCustomEditor(Date.class, new CustomDateEditor(dateFormat, true));  
	}
}
