package main.java.agriculture.intel.model;

import java.util.Date;

import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
/**
 * 操作记录表，由于记录用户操作暂未想到方法，后期可能去除此表，暂不做映射。
 * 思路：用AOP
 *
 * @author Stephen Huge
 *
 * @date 2018年3月28日下午10:41:04
 *
 */
public class OperatingRecord {
	private int recordId;
	
	private Date operationtime;
	
	private String operationType;
	
	private String operator;
	
	private String notes;

	@Id
	@GeneratedValue(strategy=GenerationType.AUTO)
	public int getRecordId() {
		return recordId;
	}

	public void setRecordId(int recordId) {
		this.recordId = recordId;
	}

	public Date getOperationtime() {
		return operationtime;
	}

	public void setOperationtime(Date operationtime) {
		this.operationtime = operationtime;
	}

	public String getOperationType() {
		return operationType;
	}

	public void setOperationType(String operationType) {
		this.operationType = operationType;
	}

	public String getOperator() {
		return operator;
	}

	public void setOperator(String operator) {
		this.operator = operator;
	}

	public String getNotes() {
		return notes;
	}

	public void setNotes(String notes) {
		this.notes = notes;
	}
	
}
