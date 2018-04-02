package main.java.agriculture.intel.service;

import java.util.Date;
import java.util.List;

import javax.annotation.Resource;

import main.java.agriculture.intel.dao.AgricultureRadiationDataDao;
import main.java.agriculture.intel.model.AgricultureRadiationData;

public class AgricultureRadiationDataServiceImpl implements AgricultureRadiationDataService {

	private AgricultureRadiationDataDao agricultureRadiationDataDao;
	
	public AgricultureRadiationDataDao getAgricultureRadiationDataDao() {
		return agricultureRadiationDataDao;
	}
	@Resource
	public void setAgricultureRadiationDataDao(AgricultureRadiationDataDao agricultureRadiationDataDao) {
		this.agricultureRadiationDataDao = agricultureRadiationDataDao;
	}

	@Override
	public AgricultureRadiationData getLastestData() {
		return this.agricultureRadiationDataDao.getLastestData();
	}

	@Override
	public AgricultureRadiationData getDataByTime(Date tacq) {
		return this.agricultureRadiationDataDao.getDataByTime(tacq);
	}

	@Override
	public List<AgricultureRadiationData> getDataByImei(String imei) {
		return this.agricultureRadiationDataDao.getDataByImei(imei);
	}

	@Override
	public List<AgricultureRadiationData> getDataByTimePeriod(Date startTime, Date endTime) {
		return this.agricultureRadiationDataDao.getDataByTimePeriod(startTime, endTime);
	}

	@Override
	public List<AgricultureRadiationData> getAllData() {
		return this.agricultureRadiationDataDao.getAllData();
	}

}
