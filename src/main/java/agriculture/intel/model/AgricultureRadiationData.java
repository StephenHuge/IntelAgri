package main.java.agriculture.intel.model;

import java.util.Date;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
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

	public AgricultureRadiationData() {
		super();
	}

	public AgricultureRadiationData(int radiationDataId, Date tacq, String batteryLevel,
			String currentSolarRadiationIntensity, String cumulativeSolarRadiationIntensity, String imei,
			String meteorologicalEquipmentStatus, Date serverTime) {
		super();
		this.radiationDataId = radiationDataId;
		this.tacq = tacq;
		this.batteryLevel = batteryLevel;
		this.currentSolarRadiationIntensity = currentSolarRadiationIntensity;
		this.cumulativeSolarRadiationIntensity = cumulativeSolarRadiationIntensity;
		this.imei = imei;
		this.meteorologicalEquipmentStatus = meteorologicalEquipmentStatus;
		this.serverTime = serverTime;
	}

	@Id
	@GeneratedValue(strategy=GenerationType.AUTO)
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

	@Override
	public String toString() {
		return "AgricultureRadiationData (radiationDataId=" + radiationDataId + ", tacq=" + tacq + ", batteryLevel="
				+ batteryLevel + ", currentSolarRadiationIntensity=" + currentSolarRadiationIntensity
				+ ", cumulativeSolarRadiationIntensity=" + cumulativeSolarRadiationIntensity + ", imei=" + imei
				+ ", meteorologicalEquipmentStatus=" + meteorologicalEquipmentStatus + ", serverTime=" + serverTime
				+ ")";
	}
	
	
}
