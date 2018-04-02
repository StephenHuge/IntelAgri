package main.java.agriculture.intel.service;

import java.util.Date;
import java.util.List;

import main.java.agriculture.intel.model.AgricultureRadiationData;

public interface AgricultureRadiationDataService {
	
	public AgricultureRadiationData getLastestData();
	public AgricultureRadiationData getDataByTime(Date tacq);
	public List<AgricultureRadiationData> getDataByImei(String imei);
	public List<AgricultureRadiationData> getDataByTimePeriod(Date startTime, Date endTime);
	public List<AgricultureRadiationData> getAllData();
	
	
}
