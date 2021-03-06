package main.java.agriculture.intel.model;

import java.util.Date;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;
/**
 * 管理人员表
 *
 *
 * @author Stephen Huge
 *
 * @date 2018年3月28日下午4:01:29
 *
 */

@Entity
@Table(name="administrator_inf")
public class AdministratorInfo {
	
	private String name;
	
	private int jobId;
	
	private String password;
	
	private String organization;
	
	private String cellPhone;
	
	private Date recordDate;
	
	private Date expiryDate;
	
	private String privilege;

	
	public AdministratorInfo() {
		super();
	}

	public AdministratorInfo(String name, int jobId, String password, String organization, String cellPhone,
			Date recordDate, Date expiryDate, String privilege) {
		super();
		this.name = name;
		this.jobId = jobId;
		this.password = password;
		this.organization = organization;
		this.cellPhone = cellPhone;
		this.recordDate = recordDate;
		this.expiryDate = expiryDate;
		this.privilege = privilege;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}
	@Id
	@GeneratedValue(strategy=GenerationType.AUTO)
	public int getJobId() {
		return jobId;
	}

	public void setJobId(int jobId) {
		this.jobId = jobId;
	}

	public String getPassword() {
		return password;
	}

	public void setPassword(String password) {
		this.password = password;
	}

	public String getOrganization() {
		return organization;
	}

	public void setOrganization(String organization) {
		this.organization = organization;
	}

	public String getCellPhone() {
		return cellPhone;
	}

	public void setCellPhone(String cellPhone) {
		this.cellPhone = cellPhone;
	}

	public Date getRecordDate() {
		return recordDate;
	}

	public void setRecordDate(Date recordDate) {
		this.recordDate = recordDate;
	}

	public Date getExpiryDate() {
		return expiryDate;
	}

	public void setExpiryDate(Date expiryDate) {
		this.expiryDate = expiryDate;
	}

	public String getPrivilege() {
		return privilege;
	}

	public void setPrivilege(String privilege) {
		this.privilege = privilege;
	}

	@Override
	public String toString() {
		return "AdministratorInfo(name=" + name + ", jobId=" + jobId + ", password=" + password + ", organization="
				+ organization + ", cellPhone=" + cellPhone + ", recordDate=" + recordDate + ", expiryDate="
				+ expiryDate + ", privilege=" + privilege + ")";
	}
	
}
