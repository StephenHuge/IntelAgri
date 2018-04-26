package main.java.agriculture.intel.dao;

import java.util.List;

import javax.annotation.Resource;

import org.hibernate.SessionFactory;
import org.springframework.stereotype.Repository;

import main.java.agriculture.intel.model.AdministratorInfo;
/**
 * ����administratorInfo��dao��ʵ��
 * Ӧ�������ݿ������ʹ��hql������sql����Ȼ���ֱ� is not mapped ����
 *
 * @author Stephen Huge
 *
 * @date 2018��3��28������10:16:32
 *
 */
@Repository("administratorInfoDao")
public class AdministratorInfoDaoImpl implements AdministratorInfoDao {

	private SessionFactory sessionFactory;
	
	public SessionFactory getSessionFactory() {
		return sessionFactory;
	}
	@Resource
	public void setSessionFactory(SessionFactory sessionFactory) {
		this.sessionFactory = sessionFactory;
	}

	@Override
	public void addAdministratorInfo(AdministratorInfo administratorInfo) {
		this.sessionFactory.getCurrentSession().save(administratorInfo);
		this.sessionFactory.getCurrentSession().flush();
	}

	@Override
	public void updateAdministratorInfo(AdministratorInfo administratorInfo) {
		this.sessionFactory.getCurrentSession().update(administratorInfo);
		this.sessionFactory.getCurrentSession().flush();
	}

	@Override
	public void delAdministratorInfo(int jobId) {
		AdministratorInfo administratorInfo = this.load(jobId);
		this.sessionFactory.getCurrentSession().delete(administratorInfo);
		this.sessionFactory.getCurrentSession().flush();
	}

	@Override
	public AdministratorInfo load(int jobId) {
		return (AdministratorInfo) this.sessionFactory.getCurrentSession().load(AdministratorInfo.class, jobId);
	}

	@Override
	public int getIdByName(String name) {
		return (int) sessionFactory.getCurrentSession()
				.createQuery("select ai.jobId from AdministratorInfo ai where ai.name=?")
				.setParameter(0, name)
				
				.uniqueResult();
	}

	@Override
	public String getPassword(int jobId) {
		return (String) sessionFactory.getCurrentSession()
				.createQuery("select password from AdministratorInfo where jobId=?")
				.setParameter(0, jobId).uniqueResult();
	}

	@Override
	public String getNameById(int jobId) {
		return (String) sessionFactory.getCurrentSession()
				.createQuery("select name from AdministratorInfo where jobId=?")
				.setParameter(0, jobId).uniqueResult();
	}

	@Override
	public boolean containAdministratorInfo(int jobId) {
		return (boolean) !(load(jobId).equals(null));
	}

	@SuppressWarnings("unchecked")
	@Override
	public List<AdministratorInfo> getAllAdministratorInfo() {
		return (List<AdministratorInfo>) sessionFactory.getCurrentSession()
				.createQuery("select ai from AdministratorInfo ai").list();	// hql�в���ʹ��select *
	}
	
	
}
