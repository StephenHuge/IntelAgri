package main.java.agriculture.intel.dao;

import java.util.List;

import main.java.agriculture.intel.model.DeviceInfo;
/**
 * ��deviceInfo���в�����dao�ӿ�
 *
 *
 * @author Stephen Huge
 *
 * @date 2018��3��28������10:05:15
 *
 */
public interface DeviceInfoDao {
	
	/**
	 * ���һ���豸
	 */
	public void addDeviceInfo(DeviceInfo deviceInfo);

	/**
	 * ����һ���豸����Ϣ
	 */
    public void updateDeviceInfo(DeviceInfo deviceInfo);
    
    /**
     * ɾ��һ���豸����Ϣ
     */
    public void delDeviceInfo(int deviceId);

    /**
     * ͨ��deviceId��ȡ������Ϣ 
     */
    public DeviceInfo load(int deviceId);

    /**
     * ͨ��deviceId�ж��Ƿ�������豸
     */
    public boolean containDeviceId(int deviceId);

    /**
     * ��ȡ�����豸
     */
    public List<DeviceInfo> getAllDeviceInfo();
}
