package main.java.agriculture.intel.dao;

import java.util.List;

import main.java.agriculture.intel.model.AdministratorInfo;
/**
 * 处理administratorInfo的dao类接口
 *
 *
 * @author Stephen Huge
 *
 * @date 2018年3月28日下午10:14:43
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
