package main.java.agriculture.intel.dao;

import java.util.Date;
import java.util.List;

import main.java.agriculture.intel.model.AgricultureTemperatureData;
/**
 * ����AgricultureTemperatureData��dao��
 * 
 * @author Stephen Huge
 *
 * @date 2018��4��2������4:12:40
 *
 */
public interface AgricultureTemperatureDataDao {
	
	/**
	 * ��ȡ���£�ʵʱ������ 
	 */
	public AgricultureTemperatureData getLastestData();

	/**
	 * ͨ�����ڻ�ȡ����
	 */
	public AgricultureTemperatureData getDataByTime(Date tacq);
	
	/**
	 * ��ȡ�ض�IMEI�豸���������� 
	 */
	public List<AgricultureTemperatureData> getDataByImei(String imei);
	
	/**
	 * ��ȡĳһʱ��ε����� 
	 */
	public List<AgricultureTemperatureData> getDataByTimePeriod(Date startTime, Date endTime);
	
	/**
	 * ��ȡ��������
	 */
	public List<AgricultureTemperatureData> getAllData();
}
