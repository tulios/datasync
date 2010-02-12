package com.datasync.processor;

public class Index implements Comparable<Index>{

	private String className;
	private String id;
	
	public Index(){
	}
	
	public Index(String className, String id){
		this.className = className;
		this.id = id;
	}
	
	public String getClassName() {
		return className;
	}
	
	public void setClassName(String className) {
		this.className = className;
	}
	
	public String getId() {
		return id;
	}
	
	public void setId(String id) {
		this.id = id;
	}
	
	@Override
	public int compareTo(Index index) {
		return new String(this.getId()).compareTo(new String(index.getId()));
	}
	
	@Override
	public boolean equals(Object obj) {
		if (obj instanceof Index){
			Index index = (Index) obj;
			if (index.getId().equals(getId())){
				return true;
			}
			return false;
		}
		return false;
	}

	@Override
	public int hashCode() {
		return (""+getId()).hashCode();
	}
	
}
