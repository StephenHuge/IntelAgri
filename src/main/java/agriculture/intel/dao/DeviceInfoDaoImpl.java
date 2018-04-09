package main.java.agriculture.intel.dao;

import java.util.List;

import javax.annotation.Resource;

import org.hibernate.SessionFactory;
import org.springframework.stereotype.Repository;

import main.java.agriculture.intel.model.DeviceInfo;
/**
 * 对deviceInfo进行操作的dao类实现
 *
 *
 * @author Stephen Huge
 *
 * @date 2018年3月28日下午9:53:53
 *
 */
@Repository("deviceInfoDao")
public class DeviceInfoDaoImpl implements DeviceInfoDao {
	private SessionFactory sessionFactory;
	  
	public SessionFactory getSessionFactory() {
		return sessionFactory;
	}

	@Resource
	public void setSessionFactory(SessionFactory sessionFactory) {
		this.sessionFactory = sessionFactory;
	}

	@Override
	public void addDeviceInfo(DeviceInfo deviceInfo) {
		this.sessionFactory.getCurrentSession().save(deviceInfo);
		this.sessionFactory.getCurrentSession().flush();
	}

	@Override
	public void updateDeviceInfo(DeviceInfo deviceInfo) {
		this.sessionFactory.getCurrentSession().update(deviceInfo);
		this.sessionFactory.getCurrentSession().flush();
	}

	@Override
	public void delDeviceInfo(int deviceId) {
		DeviceInfo deviceInfo = this.load(deviceId);
		this.sessionFactory.getCurrentSession().delete(deviceInfo);
		this.sessionFactory.getCurrentSession().flush();
	}
	@Override
	public DeviceInfo load(int deviceId) {
		return (DeviceInfo) this.sessionFactory.getCurrentSession().load(DeviceInfo.class, deviceId);
	}
	@Override
	public boolean containDeviceId(int deviceId) {
		return (boolean) !(load(deviceId).equals(null));
	}
	@SuppressWarnings("unchecked")
	@Override
	public List<DeviceInfo> getAllDeviceInfo() {
		return (List<DeviceInfo>) sessionFactory.getCurrentSession()
				.createQuery("select di from DeviceInfo di").list();
	}

}
