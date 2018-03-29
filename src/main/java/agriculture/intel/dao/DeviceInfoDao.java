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
	public void addDeviceInfo(DeviceInfo deviceInfo);

    public void updateDeviceInfo(DeviceInfo deviceInfo);

    public void delDeviceInfo(int deviceId);

    public DeviceInfo load(int deviceId);

    public boolean containDeviceId(int deviceId);

    public List<DeviceInfo> getAllDeviceInfo();
}
