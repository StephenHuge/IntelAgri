package main.java.agriculture.intel.dao;

import java.util.Date;
import java.util.List;

import javax.annotation.Resource;

import org.hibernate.SessionFactory;
import org.springframework.stereotype.Repository;

import main.java.agriculture.intel.model.AgricultureRadiationData;
/**
 * ����AgricultureRadiationData��dao��ʵ��
 *
 *
 * @author Stephen Huge
 *
 * @date 2018��3��28������10:54:57
 *
 */
@Repository("agricultureRadiationDataDao")
public class AgricultureRadiationDataDaoImpl implements AgricultureRadiationDataDao {
	
	private SessionFactory sessionFactory;
	
	public SessionFactory getSessionFactory() {
		return sessionFactory;
	}
	@Resource
	public void setSessionFactory(SessionFactory sessionFactory) {
		this.sessionFactory = sessionFactory;
	}

	@Override
	public AgricultureRadiationData getLastestData() {
		return (AgricultureRadiationData) this.sessionFactory.getCurrentSession()
				.createQuery("select MAX(tacq) from agri_data_ radiation");
	}

	@Override
	public AgricultureRadiationData getDataByTime(Date tacq) {
		return (AgricultureRadiationData) this.sessionFactory.getCurrentSession()
				.load(AgricultureRadiationData.class, tacq);
	}

	@SuppressWarnings("unchecked")
	@Override
	public List<AgricultureRadiationData> getDataByImei(String imei) {
		return (List<AgricultureRadiationData>) this.sessionFactory.getCurrentSession()
				.createQuery("select * from agri_data_ radiation where imei=?")
				.setParameter(0, imei).list();
	}

	@SuppressWarnings("unchecked")
	@Override
	public List<AgricultureRadiationData> getDataByTimePeriod(Date startTime, Date endTime) {
		return (List<AgricultureRadiationData>) this.sessionFactory.getCurrentSession()
				.createQuery("select * from agri_data_ radiation where tacq>=? and tacq<=?")
				.setParameter(0, startTime)
				.setParameter(1, endTime).list();
	}

	@SuppressWarnings("unchecked")
	@Override
	public List<AgricultureRadiationData> getAllData() {
		return (List<AgricultureRadiationData>) this.sessionFactory.getCurrentSession()
				.createQuery("select * from agri_data_ radiation").list();
	}

}