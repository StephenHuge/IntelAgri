package main.java.agriculture.intel.service;

import java.util.List;

import javax.annotation.Resource;

import main.java.agriculture.intel.dao.DeviceInfoDaoImpl;
import main.java.agriculture.intel.model.DeviceInfo;

public class DeviceInfoServiceImpl implements DeviceInfoService {

	private DeviceInfoDaoImpl deviceInfoImpl;
	
	public DeviceInfoDaoImpl getDeviceInfoImpl() {
		return deviceInfoImpl;
	}
	@Resource
	public void setDeviceInfoImpl(DeviceInfoDaoImpl deviceInfoImpl) {
		this.deviceInfoImpl = deviceInfoImpl;
	}

	@Override
	public void addDeviceInfo(DeviceInfo deviceInfo) {
		this.deviceInfoImpl.addDeviceInfo(deviceInfo);
	}

	@Override
	public void updateDeviceInfo(DeviceInfo deviceInfo) {
		this.deviceInfoImpl.updateDeviceInfo(deviceInfo);
	}

	@Override
	public void delDeviceInfo(int deviceId) {
		this.deviceInfoImpl.delDeviceInfo(deviceId);
	}

	@Override
	public DeviceInfo load(int deviceId) {
		return this.deviceInfoImpl.load(deviceId);
	}

	@Override
	public boolean containDeviceId(int deviceId) {
		return this.deviceInfoImpl.containDeviceId(deviceId);
	}

	@Override
	public List<DeviceInfo> getAllDeviceInfo() {
		return this.deviceInfoImpl.getAllDeviceInfo();
	}

}
