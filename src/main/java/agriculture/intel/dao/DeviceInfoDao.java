package main.java.agriculture.intel.dao;

import java.util.List;

import main.java.agriculture.intel.model.DeviceInfo;
/**
 * 对deviceInfo进行操作的dao接口
 *
 *
 * @author Stephen Huge
 *
 * @date 2018年3月28日下午10:05:15
 *
 */
public interface DeviceInfoDao {
	
	/**
	 * 添加一个设备
	 */
	public void addDeviceInfo(DeviceInfo deviceInfo);

	/**
	 * 更新一个设备的信息
	 */
    public void updateDeviceInfo(DeviceInfo deviceInfo);
    
    /**
     * 删除一个设备的信息
     */
    public void delDeviceInfo(int deviceId);

    /**
     * 通过deviceId获取数据信息 
     */
    public DeviceInfo load(int deviceId);

    /**
     * 通过deviceId判断是否有这个设备
     */
    public boolean containDeviceId(int deviceId);

    /**
     * 获取所有设备
     */
    public List<DeviceInfo> getAllDeviceInfo();
}
