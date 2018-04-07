package debug.java.agriculture.intel;

import java.util.List;

import javax.annotation.Resource;

import org.hibernate.SessionFactory;
import org.springframework.stereotype.Repository;

@Repository
public class TestDao {
	private SessionFactory sessionFactory;

	public SessionFactory getSessionFactory() {
		return sessionFactory;
	}
	@Resource
	public void setSessionFactory(SessionFactory sessionFactory) {
		this.sessionFactory = sessionFactory;
	}
	/**
	 * 注册 
	 */
	public void register(TestModel testModel) {
		this.sessionFactory.getCurrentSession().save(testModel);
	}
	/**
	 * 根据name获取model
	 */
	public TestModel getModelByName(String name) {
		return (TestModel) this.sessionFactory.getCurrentSession().
						createQuery("SELECT model FROM TestModel model WHERE model.name=?")
						.setParameter(0, name).uniqueResult();
	}
	/**
	 * 根据age获取model 
	 */
	public TestModel getModelByAge(int age) {
		return (TestModel) this.sessionFactory.getCurrentSession().
				createQuery("SELECT model FROM TestModel model WHERE model.age=?")
				.setParameter(0, age).uniqueResult();
	}
	/**
	 * 获取所有model 
	 */
	@SuppressWarnings("unchecked")
	public List<TestModel> getAllModels() {
		return (List<TestModel>) this.sessionFactory.getCurrentSession().
				createQuery("SELECT model FROM TestModel model ")
				.list();
	}
	public TestModel load(int id) {
		return (TestModel) this.sessionFactory.getCurrentSession().load(TestModel.class, id);
	}
	public boolean containsModel(int id) {
		return load(id).equals(null);
	}
	public void delModelByName(String name) {
		TestModel testModel = getModelByName(name); 
		if (testModel.equals(null)) {
			System.out.println("object null, del false.");
			return;
		}
		this.sessionFactory.getCurrentSession().delete(testModel);
		this.sessionFactory.getCurrentSession().flush();
	}
	public void updateModel(TestModel testModel) {
		this.sessionFactory.getCurrentSession().update(testModel);
		this.sessionFactory.getCurrentSession().flush();
	}
}
