package main.java.agriculture.intel.service;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import main.java.agriculture.intel.dao.DeviceInfoDao;
import main.java.agriculture.intel.dao.DeviceInfoDaoImpl;
import main.java.agriculture.intel.model.DeviceInfo;

@Service
public class DeviceInfoServiceImpl implements DeviceInfoService {

	private DeviceInfoDao deviceInfoDao;
	
	public DeviceInfoDao getDeviceInfo() {
		return deviceInfoDao;
	}
	@Resource
	public void setDeviceInfo(DeviceInfoDao deviceInfoDao) {
		this.deviceInfoDao = deviceInfoDao;
	}

	@Override
	public void addDeviceInfo(DeviceInfo deviceInfo) {
		this.deviceInfoDao.addDeviceInfo(deviceInfo);
	}

	@Override
	public void updateDeviceInfo(DeviceInfo deviceInfo) {
		this.deviceInfoDao.updateDeviceInfo(deviceInfo);
	}

	@Override
	public void delDeviceInfo(int deviceId) {
		this.deviceInfoDao.delDeviceInfo(deviceId);
	}

	@Override
	public DeviceInfo load(int deviceId) {
		return this.deviceInfoDao.load(deviceId);
	}

	@Override
	public boolean containDeviceId(int deviceId) {
		return this.deviceInfoDao.containDeviceId(deviceId);
	}

	@Override
	public List<DeviceInfo> getAllDeviceInfo() {
		return this.deviceInfoDao.getAllDeviceInfo();
	}

}
