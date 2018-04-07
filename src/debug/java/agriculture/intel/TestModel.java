package debug.java.agriculture.intel;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name="test")
public class TestModel {
	
	private Integer id;
	private String name;
	private String password;
	private int age;
	
	public TestModel() {
		super();
	}
	
	public TestModel(String name, String password, int age) {
		super();
		this.name = name;
		this.password = password;
		this.age = age;
	}

	@Id 
	@GeneratedValue(strategy=GenerationType.AUTO)
	public Integer getId() {
		return id;
	}

	public void setId(Integer id) {
		this.id = id;
	}

	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getPassword() {
		return password;
	}
	public void setPassword(String password) {
		this.password = password;
	}

	public int getAge() {
		return age;
	}

	public void setAge(int age) {
		this.age = age;
	}
	
}
