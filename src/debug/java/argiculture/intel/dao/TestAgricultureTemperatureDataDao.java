package debug.java.argiculture.intel.dao;

import java.util.Date;
import java.util.List;

import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

import main.java.agriculture.intel.dao.AgricultureTemperatureDataDao;
import main.java.agriculture.intel.model.AgricultureTemperatureData;
@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration(locations="classpath:/springAnnotation-hibernate.xml")
public class TestAgricultureTemperatureDataDao {

	@Autowired
	private AgricultureTemperatureDataDao atdDao;
	
	private AgricultureTemperatureData agricultureRadiationData = 
			new AgricultureTemperatureData(10, "aa", new Date(), 
							"20", "60", "AX315SFE4", "NORMAL",  "AX315SFE4", "NORMAL", new Date());
	@Test
	public void testGetLastestData() {
		AgricultureTemperatureData atdData = atdDao.getLastestData();
		System.out.println(atdData);
	}

	@Test
	public void testGetDataByTime() {
		AgricultureTemperatureData atdData = atdDao.getDataByTime(new Date());
		System.out.println(atdData);
	}

	@Test
	public void testGetDataByImei() {
		List<AgricultureTemperatureData> atdDatas = atdDao.getDataByImei("aadas");
		for (AgricultureTemperatureData atdData : atdDatas) {
			System.out.println(atdData);
		}
	}

	@Test
	public void testGetDataByTimePeriod() {
		List<AgricultureTemperatureData> atdDatas = atdDao.getDataByTimePeriod(new Date(), new Date());
		for (AgricultureTemperatureData atdData : atdDatas) {
			System.out.println(atdData);
		}
	}

	@Test
	public void testGetAllData() {
		List<AgricultureTemperatureData> atdDatas = atdDao.getAllData();
		for (AgricultureTemperatureData atdData : atdDatas) {
			System.out.println(atdData);
		}
	}


}
