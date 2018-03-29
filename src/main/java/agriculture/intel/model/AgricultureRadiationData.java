package main.java.agriculture.intel.model;

import java.util.Date;

import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;

/**
 * 农业数据辐射表
 *
 *
 * @author Stephen Huge
 *
 * @date 2018年3月28日下午3:52:35
 *
 */
@Entity
@Table(name="agri_data_radiation")
public class AgricultureRadiationData {
	
	private int radiationDataId;
	
	private Date tacq;
	
	private String batteryLevel;
	
	private String currentSolarRadiationIntensity;
	
	private String cumulativeSolarRadiationIntensity;
	
	private String imei;
	
	private String meteorologicalEquipmentStatus;
	
	private Date serverTime;

	@Id
	public int getRadiationDataId() {
		return radiationDataId;
	}

	public void setRadiationDataId(int radiationDataId) {
		this.radiationDataId = radiationDataId;
	}

	public Date getTacq() {
		return tacq;
	}

	public void setTacq(Date tacq) {
		this.tacq = tacq;
	}

	public String getBatteryLevel() {
		return batteryLevel;
	}

	public void setBatteryLevel(String batteryLevel) {
		this.batteryLevel = batteryLevel;
	}

	public String getCurrentSolarRadiationIntensity() {
		return currentSolarRadiationIntensity;
	}

	public void setCurrentSolarRadiationIntensity(String currentSolarRadiationIntensity) {
		this.currentSolarRadiationIntensity = currentSolarRadiationIntensity;
	}

	public String getCumulativeSolarRadiationIntensity() {
		return cumulativeSolarRadiationIntensity;
	}

	public void setCumulativeSolarRadiationIntensity(String cumulativeSolarRadiationIntensity) {
		this.cumulativeSolarRadiationIntensity = cumulativeSolarRadiationIntensity;
	}

	public String getImei() {
		return imei;
	}

	public void setImei(String imei) {
		this.imei = imei;
	}

	public String getMeteorologicalEquipmentStatus() {
		return meteorologicalEquipmentStatus;
	}

	public void setMeteorologicalEquipmentStatus(String meteorologicalEquipmentStatus) {
		this.meteorologicalEquipmentStatus = meteorologicalEquipmentStatus;
	}

	public Date getServerTime() {
		return serverTime;
	}

	public void setServerTime(Date serverTime) {
		this.serverTime = serverTime;
	}
	
	
}
