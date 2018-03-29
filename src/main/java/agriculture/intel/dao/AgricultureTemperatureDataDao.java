package main.java.agriculture.intel.dao;

import java.util.Date;
import java.util.List;

import main.java.agriculture.intel.model.AgricultureTemperatureData;

public interface AgricultureTemperatureDataDao {
	public AgricultureTemperatureData getLastestData();
	public AgricultureTemperatureData getDataByTime(Date tacq);
	public List<AgricultureTemperatureData> getDataByImei(String imei);
	public List<AgricultureTemperatureData> getDataByTimePeriod(Date startTime, Date endTime);
	public List<AgricultureTemperatureData> getAllData();
}
