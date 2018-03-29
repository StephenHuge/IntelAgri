package test.java.argiculture.intel.dao;

import static org.junit.Assert.*;

import java.util.Date;
import java.util.List;
import java.util.Random;

import org.hibernate.SessionFactory;
import org.hibernate.boot.registry.StandardServiceRegistryBuilder;
import org.hibernate.cfg.Configuration;
import org.hibernate.service.ServiceRegistry;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.ApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

import main.java.agriculture.intel.dao.AdministratorInfoDao;
import main.java.agriculture.intel.dao.AdministratorInfoDaoImpl;
import main.java.agriculture.intel.model.AdministratorInfo;
@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration(locations="classpath:/springAnnotation-hibernate.xml")
public class TestAdministratorInfoDao {
	@Autowired
	private AdministratorInfoDao aiDao;
	
	AdministratorInfo administratorInfo = new AdministratorInfo("hjs", 162121029 + new Random().nextInt(), "1234", "HIT",
			"18846070470", new Date(), new Date(2019, 3, 29), "ADD");
	@Test
	public void testAddAdministratorInfo() {
		//		fail("Not yet implemented");
		
		aiDao.addAdministratorInfo(administratorInfo);
	}

	@Test
	public void testUpdateAdministratorInfo() {
		
		administratorInfo.setCellPhone("110");
		aiDao.updateAdministratorInfo(administratorInfo);
	}

	@Test
	public void testDelAdministratorInfo() {
		aiDao.delAdministratorInfo(162121099);
//		aiDao.addAdministratorInfo(administratorInfo);
	}

	/**
	 * 开启延迟加载后load（id），返回的对象会被Hibernate加一个壳
	 * (持久化上下文中没有缓存该对象的前提下)，拦截所有非id属性的访问操作
	 * （getter，setter调用），只有id属性中有实际值（其实就是你调用
	 * load方法时传的那个），在session没有关闭的之前，如果访问除id外
	 * 的其他属性才会发sql语句去查询，你这个错误就是因为在当前session
	 * 关闭以后访问由load（）加载的对象的非id属性，此时Hibernate尝
	 * 试通过当前session发sql查询，但发现session已经关闭，这样才
	 * 会报错。 
	 * href:http://www.iteye.com/problems/42944
	 */
	@Test
	public void testLoad() {
		AdministratorInfo myInfo = aiDao.load(162121099);
//		myInfo.setCellPhone("18846915679");
//		aiDao.updateAdministratorInfo(myInfo);
		System.out.println(myInfo.getJobId());	
	}

	@Test
	public void testGetIdByName() {
		int id = aiDao.getIdByName("hjs1");
		System.out.println(id);
	}

	@Test
	public void testGetPassword() {
		String password = aiDao.getPassword(-907652936);
		System.out.println(password);
	}

	@Test
	public void testGetNameById() {
		String name = aiDao.getNameById(-907652936);
		System.out.println(name);
	}

	@Test
	public void testContainAdministratorInfo() {
		fail("Not yet implemented");
	}

	@Test
	public void testGetAllAdministratorInfo() {
		List<AdministratorInfo> infos = aiDao.getAllAdministratorInfo();
		for (AdministratorInfo ai : infos) {
			System.out.println(ai);
		}
	}

}
