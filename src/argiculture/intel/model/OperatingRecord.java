package argiculture.intel.model;

import java.util.Date;

import javax.persistence.Id;

public class OperatingRecord {
	private int recordId;
	
	private Date operationtime;
	
	private String operationType;
	
	private String operator;
	
	private String notes;

	@Id
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
