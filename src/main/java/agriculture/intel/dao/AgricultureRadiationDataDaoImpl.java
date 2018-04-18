package main.java.agriculture.intel.dao;

import java.util.Date;
import java.util.List;

import javax.annotation.Resource;

import org.hibernate.Query;
import org.hibernate.SessionFactory;
import org.springframework.stereotype.Repository;

import main.java.agriculture.intel.model.AgricultureRadiationData;
/**
 * 处理AgricultureRadiationData的dao类实现
 *
 *
 * @author Stephen Huge
 *
 * @date 2018年3月28日下午10:54:57
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
	// hql 不支持limit 操作
	@Override
	public AgricultureRadiationData getLastestData() {
		Query query = this.sessionFactory.getCurrentSession()
				.createQuery("select ard from AgricultureRadiationData ard order by ard.radiationDataId desc");
		query.setFirstResult(0);
		query.setMaxResults(1);
		return (AgricultureRadiationData) query.uniqueResult();
	}

	@Override
	public AgricultureRadiationData getDataByTime(Date tacq) {
		return (AgricultureRadiationData) this.sessionFactory.getCurrentSession()
				.createQuery("select ard from AgricultureRadiationData ard where tacq=?")
				.setParameter(0, tacq)
				.uniqueResult();
	}

	@SuppressWarnings("unchecked")
	@Override
	public List<AgricultureRadiationData> getDataByImei(String imei) {
		return (List<AgricultureRadiationData>) this.sessionFactory.getCurrentSession()
				.createQuery("select ard from AgricultureRadiationData ard where imei=?")
				.setParameter(0, imei).list();
	}

	@SuppressWarnings("unchecked")
	@Override
	public List<AgricultureRadiationData> getDataByTimePeriod(Date startTime, Date endTime) {
		return (List<AgricultureRadiationData>) this.sessionFactory.getCurrentSession()
				.createQuery("select ard from AgricultureRadiationData ard where tacq>=? and tacq<=?")
				.setParameter(0, startTime)
				.setParameter(1, endTime).list();
	}

	@SuppressWarnings("unchecked")
	@Override
	public List<AgricultureRadiationData> getAllData() {
		return (List<AgricultureRadiationData>) this.sessionFactory.getCurrentSession()
				.createQuery("select ard from AgricultureRadiationData ard").list();
	}

}
