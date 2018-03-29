package test.java.argiculture.intel.dao;

import static org.junit.Assert.*;

import java.util.Date;

import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

import main.java.agriculture.intel.dao.DeviceInfoDao;
import main.java.agriculture.intel.model.DeviceInfo;
@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration(locations="classpath:/springAnnotation-hibernate.xml")
public class TestDeviceInfoDao {

	@Autowired
	private DeviceInfoDao diDao;
	
	private DeviceInfo deviceInfo = 
			new DeviceInfo(0, "11", "22", "33", "44", new Date());
	@Test
	public void testAddDeviceInfo() {
		diDao.addDeviceInfo(deviceInfo);
	}

	@Test
	public void testUpdateDeviceInfo() {
		fail("Not yet implemented");
	}

	@Test
	public void testDelDeviceInfo() {
		fail("Not yet implemented");
	}

	@Test
	public void testLoad() {
		fail("Not yet implemented");
	}

	@Test
	public void testContainDeviceId() {
		fail("Not yet implemented");
	}

	@Test
	public void testGetAllDeviceInfo() {
		fail("Not yet implemented");
	}

}
