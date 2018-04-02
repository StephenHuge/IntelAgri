package main.java.agriculture.intel.service;

import java.util.List;

import javax.annotation.Resource;

import main.java.agriculture.intel.dao.AdministratorInfoDao;
import main.java.agriculture.intel.model.AdministratorInfo;

public class AdministratorInfoServiceImpl implements AdministratorInfoService {

	private AdministratorInfoDao administratorInfoDao;
	
	
	public AdministratorInfoDao getAdministratorInfoDao() {
		return administratorInfoDao;
	}
	@Resource
	public void setAdministratorInfoDao(AdministratorInfoDao administratorInfoDao) {
		this.administratorInfoDao = administratorInfoDao;
	}

	@Override
	public void addAdministratorInfo(AdministratorInfo administratorInfo) {
		this.administratorInfoDao.addAdministratorInfo(administratorInfo);
	}

	@Override
	public void updateAdministratorInfo(AdministratorInfo administratorInfo) {
		this.administratorInfoDao.updateAdministratorInfo(administratorInfo);
	}

	@Override
	public void delAdministratorInfo(int jobId) {
		this.administratorInfoDao.delAdministratorInfo(jobId);		
	}

	@Override
	public AdministratorInfo load(int jobId) {
		return this.administratorInfoDao.load(jobId);
	}

	@Override
	public int getIdByName(String name) {
		return this.administratorInfoDao.getIdByName(name);
	}

	@Override
	public String getPassword(int jobId) {
		return this.administratorInfoDao.getPassword(jobId);
	}

	@Override
	public String getNameById(int jobId) {
		return this.administratorInfoDao.getNameById(jobId);
	}

	@Override
	public boolean containAdministratorInfo(int jobId) {
		return this.administratorInfoDao.containAdministratorInfo(jobId);
	}

	@Override
	public List<AdministratorInfo> getAllAdministratorInfo() {
		return this.administratorInfoDao.getAllAdministratorInfo();
	}

}
