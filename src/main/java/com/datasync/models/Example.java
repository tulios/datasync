package com.datasync.models;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;
import javax.persistence.Transient;

@Entity
@Table(name = "example")
@SuppressWarnings("serial")
public class Example extends IndexableEntity{

	@Id
	@Column(name = "id")
	private String id;
	@Column(name = "name")
	private String name;
	@Column(name = "age")
	private int age;
	@Column(name = "male")
	private boolean male;
	
	// Construtor
	public Example(){
	}
	
	@Override
	@Transient
	public String getIndexId() {
		return getId();
	}
	
	@Override
	@Transient
	public String getIdColumnName() {
		return "id";
	}
	
	// Get and Set
	public String getId() {
		return id;
	}
	public void setId(String id) {
		this.id = id;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public int getAge() {
		return age;
	}
	public void setAge(int age) {
		this.age = age;
	}
	public boolean isMale() {
		return male;
	}
	public void setMale(boolean male) {
		this.male = male;
	}
	
}
