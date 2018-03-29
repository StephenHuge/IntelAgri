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
	 * �����ӳټ��غ�load��id�������صĶ���ᱻHibernate��һ����
	 * (�־û���������û�л���ö����ǰ����)���������з�id���Եķ��ʲ���
	 * ��getter��setter���ã���ֻ��id��������ʵ��ֵ����ʵ���������
	 * load����ʱ�����Ǹ�������sessionû�йرյ�֮ǰ��������ʳ�id��
	 * ���������ԲŻᷢsql���ȥ��ѯ����������������Ϊ�ڵ�ǰsession
	 * �ر��Ժ������load�������صĶ���ķ�id���ԣ���ʱHibernate��
	 * ��ͨ����ǰsession��sql��ѯ��������session�Ѿ��رգ�������
	 * �ᱨ�� 
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
