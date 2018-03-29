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

	public void addAdministratorInfo(AdministratorInfo administratorInfo);
	public void updateAdministratorInfo(AdministratorInfo administratorInfo);
	public void delAdministratorInfo(int jobId);
	public AdministratorInfo load(int jobId);

	public int getIdByName(String name);
	public String getPassword(int jobId);
	public String getNameById(int jobId);
	
	public boolean containAdministratorInfo(int jobId);
	public List<AdministratorInfo> getAllAdministratorInfo();

}
