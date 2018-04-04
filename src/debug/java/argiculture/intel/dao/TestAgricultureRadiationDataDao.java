package debug.java.argiculture.intel.dao;

import java.util.Date;
import java.util.List;

import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

import main.java.agriculture.intel.dao.AgricultureRadiationDataDao;
import main.java.agriculture.intel.model.AgricultureRadiationData;
@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration(locations="classpath:/springAnnotation-hibernate.xml")
public class TestAgricultureRadiationDataDao {

	@Autowired
	private AgricultureRadiationDataDao ardDao;
	
	private AgricultureRadiationData agricultureRadiationData = 
			new AgricultureRadiationData(0, new Date(), "60%", 
							"20", "60", "AX315SFE4", "NORMAL", new Date());
	@Test
	public void testGetLastestData() {
		AgricultureRadiationData ardData = ardDao.getLastestData();
		System.out.println(ardData);
	}

	@Test
	public void testGetDataByTime() {
		AgricultureRadiationData ardData = ardDao.getDataByTime(new Date());
		System.out.println(ardData);
	}

	@Test
	public void testGetDataByImei() {
		List<AgricultureRadiationData> ardDatas = ardDao.getDataByImei("aadas");
		for (AgricultureRadiationData ardData : ardDatas) {
			System.out.println(ardData);
		}
	}

	@Test
	public void testGetDataByTimePeriod() {
		List<AgricultureRadiationData> ardDatas = ardDao.getDataByTimePeriod(new Date(), new Date());
		for (AgricultureRadiationData ardData : ardDatas) {
			System.out.println(ardData);
		}
	}

	@Test
	public void testGetAllData() {
		List<AgricultureRadiationData> ardDatas = ardDao.getAllData();
		for (AgricultureRadiationData ardData : ardDatas) {
			System.out.println(ardData);
		}
	}

}
