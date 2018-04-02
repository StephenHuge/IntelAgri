package main.java.agriculture.intel.dao;

import java.util.List;

import main.java.agriculture.intel.model.AdministratorInfo;
/**
 * ����administratorInfo��dao��ӿ�
 *
 *
 * @author Stephen Huge
 *
 * @date 2018��3��28������10:14:43
 *
 */
public interface AdministratorInfoDao {
	
	/**
	 * ���һ���¹���Ա
	 */
	public void addAdministratorInfo(AdministratorInfo administratorInfo);
	
	/**
	 * ���¹���Ա��Ϣ
	 */
	public void updateAdministratorInfo(AdministratorInfo administratorInfo);
	
	/**
 	 * ͨ��jobIdɾ������Ա��Ϣ 
	 */
	public void delAdministratorInfo(int jobId);
	
	/**
	 * ͨ��jobId����һ��AdministratorInfo����
	 */
	public AdministratorInfo load(int jobId);

	/**
	 * ͨ������Ա������ȡjobId��Ĭ�����ظ�����
	 */
	public int getIdByName(String name);
	
	/**
	 * ͨ��jobId��ȡ����Ա����
	 */
	public String getPassword(int jobId);
	
	/**
	 * ͨ��jobId��ȡ����Ա���� 
	 */
	public String getNameById(int jobId);
	
	/**
	 * ��ѯjobId�Ƿ���� 
	 */
	public boolean containAdministratorInfo(int jobId);
	
	/**
	 * ��ȡ���й���Ա��Ϣ
	 */
	public List<AdministratorInfo> getAllAdministratorInfo();

}
