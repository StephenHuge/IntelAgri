package main.java.agriculture.intel.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import main.java.agriculture.intel.service.AgricultureTemperatureDataService;
import main.java.agriculture.intel.model.AgricultureTemperatureData;

@Controller
@RequestMapping("/agritemperature")
public class AgricultureTemperatureController {
	private AgricultureTemperatureDataService agricultureTemperatureDataService;

	@Autowired
	public AgricultureTemperatureController(AgricultureTemperatureDataService agricultureTemperatureDataService) {
		super();
		this.agricultureTemperatureDataService = agricultureTemperatureDataService;
	}
	
	@RequestMapping(method=RequestMethod.GET)
	public String showAllData() {
		return "redirect:/agritemperature/data/allData";
	}
	
	@RequestMapping(value="/data/latest", method=RequestMethod.GET)
	public String getLatestData(Model model) {
		AgricultureTemperatureData agriTemperatureData = agricultureTemperatureDataService.getLastestData();
		model.addAttribute("agriTemperatureData", agriTemperatureData);
		return "agriTemperatureData/lastestData";
	}
	@RequestMapping(value="/data/{imei}", method=RequestMethod.GET)
	public String getDataByImei(@PathVariable String imei, ModelMap modelMap) {
		List<AgricultureTemperatureData> agriTemperatureDatas = agricultureTemperatureDataService.getDataByImei(imei);
		modelMap.addAttribute("agriTemperatureDatas", agriTemperatureDatas);
		return "agriTemperatureData/datasByImei";
	}
	@RequestMapping(value="/data/allData", method=RequestMethod.GET)
	public String getAllData(ModelMap modelMap) {
		List<AgricultureTemperatureData> agriTemperatureDatas = agricultureTemperatureDataService.getAllData();
		modelMap.addAttribute("agriTemperatureDatas", agriTemperatureDatas);
		return "agriTemperatureData/allData";
	}
	@RequestMapping(value="data/charts")
	public String getCharts() {
		return "agriTemperatureData/charts";
	}
}
