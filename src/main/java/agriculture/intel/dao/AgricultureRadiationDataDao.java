package main.java.agriculture.intel.dao;

import java.util.Date;
import java.util.List;

import main.java.agriculture.intel.model.AgricultureRadiationData;

/**
 * ����AgricultureRadiationData��Ϣ��dao��
 * 
 * @author Stephen Huge
 *
 * @date 2018��4��2������4:10:25
 *
 */
public interface AgricultureRadiationDataDao {
	
	/**
	 * ��ȡ���£�ʵʱ������ 
	 */
	public AgricultureRadiationData getLastestData();
	
	/**
	 * ͨ�����ڻ�ȡ����
	 */
	public AgricultureRadiationData getDataByTime(Date tacq);
	
	/**
	 * ��ȡ�ض�IMEI�豸���������� 
	 */
	public List<AgricultureRadiationData> getDataByImei(String imei);
	
	/**
	 * ��ȡĳһʱ��ε����� 
	 */
	public List<AgricultureRadiationData> getDataByTimePeriod(Date startTime, Date endTime);
	
	/**
	 * ��ȡ��������
	 */
	public List<AgricultureRadiationData> getAllData();
	
	
}
