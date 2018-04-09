package main.java.agriculture.intel.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import main.java.agriculture.intel.dao.AgricultureTemperatureDataDao;
import main.java.agriculture.intel.model.AgricultureTemperatureData;

@Controller
@RequestMapping("/agritemperature")
public class AgricultureTemperatureController {
	private AgricultureTemperatureDataDao agricultureTemperatureDataDao;

	@Autowired
	public AgricultureTemperatureController(AgricultureTemperatureDataDao agricultureTemperatureDataDao) {
		super();
		this.agricultureTemperatureDataDao = agricultureTemperatureDataDao;
	}
	
	@RequestMapping(method=RequestMethod.GET)
	public String showAllData() {
		return "redirect:/agritemperature/data/allData";
	}
	
	@RequestMapping(value="/data/latest", method=RequestMethod.GET)
	public String getLatestData(Model model) {
		AgricultureTemperatureData agriTemperatureData = agricultureTemperatureDataDao.getLastestData();
		model.addAttribute("agriTemperatureData", agriTemperatureData);
		return "agriTemperatureData/lastestData";
	}
	@RequestMapping(value="/data/{imei}", method=RequestMethod.GET)
	public String getDataByImei(@PathVariable String imei, ModelMap modelMap) {
		List<AgricultureTemperatureData> agriTemperatureDatas = agricultureTemperatureDataDao.getDataByImei(imei);
		modelMap.addAttribute("agriTemperatureDatas", agriTemperatureDatas);
		return "agriTemperatureData/datasByImei";
	}
	@RequestMapping(value="/data/allData", method=RequestMethod.GET)
	public String getAllData(ModelMap modelMap) {
		List<AgricultureTemperatureData> agriTemperatureDatas = agricultureTemperatureDataDao.getAllData();
		modelMap.addAttribute("agriTemperatureDatas", agriTemperatureDatas);
		return "agriTemperatureData/allData";
	}
	
}
