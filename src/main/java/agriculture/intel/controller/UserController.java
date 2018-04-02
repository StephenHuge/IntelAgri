package main.java.agriculture.intel.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.sun.corba.se.impl.protocol.giopmsgheaders.RequestMessage;

import main.java.agriculture.intel.model.AdministratorInfo;
import main.java.agriculture.intel.service.AdministratorInfoService;

@Controller
@RequestMapping("/")
public class UserController {
	
	private AdministratorInfoService administratorInfoService; 
	
	@RequestMapping(value="addAdministrator", method=RequestMethod.GET)
	public String addAdministrator() {
		return "addAdmin";
	}
	@RequestMapping(value="/addAdministrator", method=RequestMethod.POST)
	public String addAdministrator(AdministratorInfo administratorInfo) {
		administratorInfoService.addAdministratorInfo(administratorInfo);
		return "allAdministrators";
	}
	
	@RequestMapping("allAdministrators")
	public String getAllAdministrators() {
		administratorInfoService.getAllAdministratorInfo();
		return "administrators";
	}
	
}
