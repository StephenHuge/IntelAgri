package main.java.agriculture.intel.service;

import java.util.Date;
import java.util.List;

import javax.annotation.Resource;

import main.java.agriculture.intel.dao.AgricultureTemperatureDataDao;
import main.java.agriculture.intel.model.AgricultureTemperatureData;

public class AgricultureTemperatureDataServiceImpl implements AgricultureTemperatureDataService {

	private AgricultureTemperatureDataDao agricultureTemperatureDataDao;
	
	public AgricultureTemperatureDataDao getAgricultureTemperatureDataDao() {
		return agricultureTemperatureDataDao;
	}
	@Resource
	public void setAgricultureTemperatureDataDao(AgricultureTemperatureDataDao agricultureTemperatureDataDao) {
		this.agricultureTemperatureDataDao = agricultureTemperatureDataDao;
	}

	@Override
	public AgricultureTemperatureData getLastestData() {
		return this.agricultureTemperatureDataDao.getLastestData();
	}

	@Override
	public AgricultureTemperatureData getDataByTime(Date tacq) {
		return this.agricultureTemperatureDataDao.getDataByTime(tacq);
	}

	@Override
	public List<AgricultureTemperatureData> getDataByImei(String imei) {
		return this.agricultureTemperatureDataDao.getDataByImei(imei);
	}

	@Override
	public List<AgricultureTemperatureData> getDataByTimePeriod(Date startTime, Date endTime) {
		return this.agricultureTemperatureDataDao.getDataByTimePeriod(startTime, endTime);
	}

	@Override
	public List<AgricultureTemperatureData> getAllData() {
		return this.agricultureTemperatureDataDao.getAllData();
	}

}
