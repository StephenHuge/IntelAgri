package main.java.agriculture.intel.model;

import java.util.Date;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;
/**
 * �豸��Ϣ
 *
 * @author Stephen Huge
 *
 * @date 2018��3��28������3:32:21
 *
 */

@Entity
@Table(name="device_inf")
public class DeviceInfo {
	
	private int deviceId;
	private String deviceName;
	private String imei;
	private String unitType;
	private String address;
	private Date date;
	
	// Ĭ���޲ι��췽��
	public DeviceInfo() {}
	
	public DeviceInfo(int deviceId, String deviceName, String imei, String unitType, String address, Date date) {
		super();
		this.deviceId = deviceId;
		this.deviceName = deviceName;
		this.imei = imei;
		this.unitType = unitType;
		this.address = address;
		this.date = date;
	}

	/*
	 * �豸��ID
	 */
	@Id
	@GeneratedValue(strategy=GenerationType.AUTO)
	public int getDeviceId() {
		return deviceId;
	}

	public void setDeviceId(int deviceId) {
		this.deviceId = deviceId;
	}

	public String getDeviceName() {
		return deviceName;
	}
	public void setDeviceName(String deviceName) {
		this.deviceName = deviceName;
	}
	public String getImei() {
		return imei;
	}
	public void setImei(String imei) {
		this.imei = imei;
	}
	public String getUnitType() {
		return unitType;
	}
	public void setUnitType(String unitType) {
		this.unitType = unitType;
	}
	public String getAddress() {
		return address;
	}
	public void setAddress(String address) {
		this.address = address;
	}
	public Date getDate() {
		return date;
	}
	public void setDate(Date date) {
		this.date = date;
	}

	@Override
	public String toString() {
		return "DeviceInfo (deviceId=" + deviceId + ", deviceName=" + deviceName + ", imei=" + imei + ", unitType="
				+ unitType + ", address=" + address + ", date=" + date + ")";
	}
	
	
}
