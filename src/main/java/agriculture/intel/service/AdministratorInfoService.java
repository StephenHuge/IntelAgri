package main.java.agriculture.intel.service;

import java.util.List;

import main.java.agriculture.intel.model.AdministratorInfo;

/**
 * �ṩAdministratorInfoService�����Service�ӿ�
 *
 * @author Stephen Huge
 *
 * @date 2018��4��2������3:50:59
 *
 */
public interface AdministratorInfoService {
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
