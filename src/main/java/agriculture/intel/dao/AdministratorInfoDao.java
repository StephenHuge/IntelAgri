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
	
	/**
	 * 添加一个新管理员
	 */
	public void addAdministratorInfo(AdministratorInfo administratorInfo);
	
	/**
	 * 更新管理员信息
	 */
	public void updateAdministratorInfo(AdministratorInfo administratorInfo);
	
	/**
 	 * 通过jobId删除管理员信息 
	 */
	public void delAdministratorInfo(int jobId);
	
	/**
	 * 通过jobId返回一个AdministratorInfo对象
	 */
	public AdministratorInfo load(int jobId);

	/**
	 * 通过管理员姓名获取jobId，默认无重复姓名
	 */
	public int getIdByName(String name);
	
	/**
	 * 通过jobId获取管理员密码
	 */
	public String getPassword(int jobId);
	
	/**
	 * 通过jobId获取管理员姓名 
	 */
	public String getNameById(int jobId);
	
	/**
	 * 查询jobId是否存在 
	 */
	public boolean containAdministratorInfo(int jobId);
	
	/**
	 * 获取所有管理员信息
	 */
	public List<AdministratorInfo> getAllAdministratorInfo();

}
