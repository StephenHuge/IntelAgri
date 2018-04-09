package main.java.agriculture.intel.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import main.java.agriculture.intel.dao.AgricultureRadiationDataDao;
import main.java.agriculture.intel.model.AgricultureRadiationData;

@Controller
@RequestMapping("/agriradiation")
public class AgricultureRadiationController {
	private AgricultureRadiationDataDao agricultureRadiationDataDao;

	@Autowired
	public AgricultureRadiationController(AgricultureRadiationDataDao agricultureRadiationDataDao) {
		super();
		this.agricultureRadiationDataDao = agricultureRadiationDataDao;
	}
	
	@RequestMapping(method=RequestMethod.GET)
	public String showAllData() {
		return "redirect:/agriradiation/data/allData";
	}
	
	@RequestMapping(value="/data/latest", method=RequestMethod.GET)
	public String getLatestData(Model model) {
		AgricultureRadiationData agriRadiationData = agricultureRadiationDataDao.getLastestData();
		model.addAttribute("agriRadiationData", agriRadiationData);
		return "agriRadiationData/lastestData";
	}
	@RequestMapping(value="/data/{imei}", method=RequestMethod.GET)
	public String getDataByImei(@PathVariable String imei, ModelMap modelMap) {
		List<AgricultureRadiationData> agriRadiationDatas = agricultureRadiationDataDao.getDataByImei(imei);
		modelMap.addAttribute("agriRadiationDatas", agriRadiationDatas);
		return "agriRadiationData/datasByImei";
	}
	@RequestMapping(value="/data/allData", method=RequestMethod.GET)
	public String getAllData(ModelMap modelMap) {
		List<AgricultureRadiationData> agriRadiationDatas = agricultureRadiationDataDao.getAllData();
		modelMap.addAttribute("agriRadiationDatas", agriRadiationDatas);
		return "agriRadiationData/allData";
	}
	
}
