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

import main.java.agriculture.intel.dao.DeviceInfoDao;
import main.java.agriculture.intel.model.DeviceInfo;

@Controller
@RequestMapping("/deviceInfos")
public class DeviceInfoController {
	private DeviceInfoDao deviceInfoDao;

	@Autowired
	public DeviceInfoController(DeviceInfoDao deviceInfoDao) {
		this.deviceInfoDao = deviceInfoDao;
	}	
	@RequestMapping(method=RequestMethod.GET)
	public String showAllDevices(ModelMap modelMap) {
		List<DeviceInfo> deviceInfos = deviceInfoDao.getAllDeviceInfo();
		modelMap.addAttribute("deviceInfos", deviceInfos);
		return "deviceInfos/allInfos";
	}
	@RequestMapping(value="/addDeviceInfo")
	public String addDeviceInfo() {
		return "deviceInfos/addDevice";
	}
	@RequestMapping(value="/addDeviceInfo", method=RequestMethod.POST)
	public String addDeviceInfo(DeviceInfo deviceInfo) {
		System.out.println("add");
		deviceInfoDao.addDeviceInfo(deviceInfo);
		return "redirect:/deviceInfos";
	}
	@RequestMapping("/{deviceId}")
	public String getDeviceInfoById(@PathVariable int deviceId, Model model) {
		DeviceInfo deviceInfo = deviceInfoDao.load(deviceId);
		model.addAttribute("deviceInfo", deviceInfo);
		return "deviceInfos/profile";
	}
	@RequestMapping(value="/updateDeviceInfo/{deviceId}", method=RequestMethod.GET)
	public String updateDeviceInfo(@PathVariable int deviceId, Model model) {
		DeviceInfo deviceInfo = deviceInfoDao.load(deviceId);
		model.addAttribute("deviceInfo", deviceInfo);
		return "deviceInfos/updateDevice";
	}
	@RequestMapping(value="/updateDeviceInfo/{deviceId}", method=RequestMethod.POST)
	public String updateDeviceInfo(DeviceInfo deviceInfo) {
		deviceInfoDao.updateDeviceInfo(deviceInfo);
		return "redirect:/deviceInfos";
	}
	@RequestMapping(value="/delDeviceInfo/{deviceId}", method=RequestMethod.GET)
	public String delDeviceInfo(@PathVariable int deviceId) {
		if (deviceInfoDao.containDeviceId(deviceId)) {
			deviceInfoDao.delDeviceInfo(deviceId);
		}
		return "redirect:/deviceInfos";
	}
	@InitBinder  
	public void initBinder(WebDataBinder binder) {  
	    SimpleDateFormat dateFormat = new SimpleDateFormat("yyyy-MM-dd");  
	    dateFormat.setLenient(false);  
	    binder.registerCustomEditor(Date.class, new CustomDateEditor(dateFormat, true));  
	}
	
}
