package main.java.agriculture.intel.model;

import java.util.Date;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

/**
 * 农业数据温湿度表
 *
 * @author Stephen Huge
 *
 * @date 2018年3月28日下午3:50:58
 *
 */
@Entity
@Table(name="agri_data_temp")
public class AgricultureTemperatureData {
	
	private int tempDataId;
	
	private String imei;
	
	private Date tacq;
	
	private String batteryLevel;
	
	private String rainfall;
	
	private String airTemperature;
	
	private String gageHeight;
	
	private String relativeHumidity;
	
	private String soilMoisture;
	
	private Date serverTime;

	public AgricultureTemperatureData() {
		super();
	}

	public AgricultureTemperatureData(int tempDataId, String imei, Date tacq, String batteryLevel, String rainfall,
			String airTemperature, String gageHeight, String relativeHumidity, String soilMoisture, Date serverTime) {
		super();
		this.tempDataId = tempDataId;
		this.imei = imei;
		this.tacq = tacq;
		this.batteryLevel = batteryLevel;
		this.rainfall = rainfall;
		this.airTemperature = airTemperature;
		this.gageHeight = gageHeight;
		this.relativeHumidity = relativeHumidity;
		this.soilMoisture = soilMoisture;
		this.serverTime = serverTime;
	}

	public String getImei() {
		return imei;
	}
	public void setImei(String imei) {
		this.imei = imei;
	}
	
	@Id
	@GeneratedValue(strategy=GenerationType.AUTO)
	public int getTempDataId() {
		return tempDataId;
	}
	public void setTempDataId(int tempDataId) {
		this.tempDataId = tempDataId;
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

	public String getRainfall() {
		return rainfall;
	}

	public void setRainfall(String rainfall) {
		this.rainfall = rainfall;
	}

	public String getAirTemperature() {
		return airTemperature;
	}

	public void setAirTemperature(String airTemperature) {
		this.airTemperature = airTemperature;
	}

	public String getGageHeight() {
		return gageHeight;
	}

	public void setGageHeight(String gageHeight) {
		this.gageHeight = gageHeight;
	}

	public String getRelativeHumidity() {
		return relativeHumidity;
	}

	public void setRelativeHumidity(String relativeHumidity) {
		this.relativeHumidity = relativeHumidity;
	}

	public String getSoilMoisture() {
		return soilMoisture;
	}

	public void setSoilMoisture(String soilMoisture) {
		this.soilMoisture = soilMoisture;
	}

	public Date getServerTime() {
		return serverTime;
	}

	public void setServerTime(Date serverTime) {
		this.serverTime = serverTime;
	}

	@Override
	public String toString() {
		return "AgricultureTemperatureData (tempDataId=" + tempDataId + ", imei=" + imei + ", tacq=" + tacq
				+ ", batteryLevel=" + batteryLevel + ", rainfall=" + rainfall + ", airTemperature=" + airTemperature
				+ ", gageHeight=" + gageHeight + ", relativeHumidity=" + relativeHumidity + ", soilMoisture="
				+ soilMoisture + ", serverTime=" + serverTime + ")";
	}
	
	
}
