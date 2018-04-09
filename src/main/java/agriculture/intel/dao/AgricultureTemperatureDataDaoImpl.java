package main.java.agriculture.intel.dao;

import java.util.Date;
import java.util.List;

import javax.annotation.Resource;

import org.hibernate.SessionFactory;
import org.springframework.stereotype.Repository;

import main.java.agriculture.intel.model.AgricultureTemperatureData;

@Repository("agricultureTemperatureDataDao")
public class AgricultureTemperatureDataDaoImpl implements AgricultureTemperatureDataDao {

	private SessionFactory sessionFactory;

	public SessionFactory getSessionFactory() {
		return sessionFactory;
	}
	@Resource
	public void setSessionFactory(SessionFactory sessionFactory) {
		this.sessionFactory = sessionFactory;
	}

	@Override
	public AgricultureTemperatureData getLastestData() {
		return (AgricultureTemperatureData) this.sessionFactory.getCurrentSession()
				.createQuery("select atd from AgricultureTemperatureData atd order by atd.tacq")
				.uniqueResult();
	}

	@Override
	public AgricultureTemperatureData getDataByTime(Date tacq) {
		return (AgricultureTemperatureData) this.sessionFactory.getCurrentSession()
				.createQuery("select atd from AgricultureTemperatureData atd where atd.tacq=?")
				.setParameter(0, tacq)
				.uniqueResult();
	}

	@SuppressWarnings("unchecked")
	@Override
	public List<AgricultureTemperatureData> getDataByImei(String imei) {
		return (List<AgricultureTemperatureData>) this.sessionFactory.getCurrentSession()
				.createQuery("select atd from AgricultureTemperatureData atd where imei=?")
				.setParameter(0, imei).list();
	}

	@SuppressWarnings("unchecked")
	@Override
	public List<AgricultureTemperatureData> getDataByTimePeriod(Date startTime, Date endTime) {
		return (List<AgricultureTemperatureData>) this.sessionFactory.getCurrentSession()
				.createQuery("select atd from AgricultureTemperatureData atd where tacq>=? and tacq<=?")
				.setParameter(0, startTime)
				.setParameter(1, endTime).list();
	}

	@SuppressWarnings("unchecked")
	@Override
	public List<AgricultureTemperatureData> getAllData() {
		return (List<AgricultureTemperatureData>) this.sessionFactory.getCurrentSession()
				.createQuery("select atd from AgricultureTemperatureData atd").list();
	}


}
