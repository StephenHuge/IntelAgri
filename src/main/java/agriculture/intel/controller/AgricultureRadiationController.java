package main.java.agriculture.intel.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.MediaType;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import main.java.agriculture.intel.service.AgricultureRadiationDataService;
import main.java.agriculture.intel.model.AgricultureRadiationData;

@Controller
@RequestMapping("/agriradiation")
public class AgricultureRadiationController {
	private AgricultureRadiationDataService agricultureRadiationDataService;

	@Autowired
	public AgricultureRadiationController(AgricultureRadiationDataService agricultureRadiationDataService) {
		super();
		this.agricultureRadiationDataService = agricultureRadiationDataService;
	}
	
	@RequestMapping(method=RequestMethod.GET)
	public String showAllData() {
		return "redirect:/agriradiation/data/allData";
	}
	
	@RequestMapping(value="/data/latest", method=RequestMethod.GET)
	public String getLatestData(Model model) {
		AgricultureRadiationData agriRadiationData = agricultureRadiationDataService.getLastestData();
		model.addAttribute("agriRadiationData", agriRadiationData);
		return "agriRadiationData/lastestData";
	}
	@RequestMapping(value="/data/{imei}", method=RequestMethod.GET)
	public String getDataByImei(@PathVariable String imei, ModelMap modelMap) {
		List<AgricultureRadiationData> agriRadiationDatas = agricultureRadiationDataService.getDataByImei(imei);
		modelMap.addAttribute("agriRadiationDatas", agriRadiationDatas);
		return "agriRadiationData/datasByImei";
	}
	@RequestMapping(value="/data/allData", method=RequestMethod.GET)
	public String getAllData(ModelMap modelMap) {
		List<AgricultureRadiationData> agriRadiationDatas = agricultureRadiationDataService.getAllData();
		modelMap.addAttribute("agriRadiationDatas", agriRadiationDatas);
		return "agriRadiationData/allData";
	}
	@RequestMapping(value="data/charts", method=RequestMethod.GET)
	public String getCharts() {
		return "agriRadiationData/charts";
	}
	@RequestMapping(value="data/charts", method=RequestMethod.POST, produces=MediaType.APPLICATION_JSON_VALUE)
	public @ResponseBody List<AgricultureRadiationData> getChartData() {
		return agricultureRadiationDataService.getAllData();
	}
}
