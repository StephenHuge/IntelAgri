package main.java.agriculture.intel.dao;

import java.util.Date;
import java.util.List;

import main.java.agriculture.intel.model.AgricultureRadiationData;

/**
 * 处理AgricultureRadiationData信息的dao类
 * 
 * @author Stephen Huge
 *
 * @date 2018年4月2日下午4:10:25
 *
 */
public interface AgricultureRadiationDataDao {
	
	/**
	 * 获取最新（实时）数据 
	 */
	public AgricultureRadiationData getLastestData();
	
	/**
	 * 通过日期获取数据
	 */
	public AgricultureRadiationData getDataByTime(Date tacq);
	
	/**
	 * 获取特定IMEI设备的所有数据 
	 */
	public List<AgricultureRadiationData> getDataByImei(String imei);
	
	/**
	 * 获取某一时间段的数据 
	 */
	public List<AgricultureRadiationData> getDataByTimePeriod(Date startTime, Date endTime);
	
	/**
	 * 获取所有数据
	 */
	public List<AgricultureRadiationData> getAllData();
	
	
}
