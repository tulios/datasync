package com.datasync.models;

import java.io.Serializable;

@SuppressWarnings("serial")
public abstract class IndexableEntity implements Serializable{

	public abstract String getIndexId();
	public abstract String getIdColumnName();

	public boolean isCompoundKey(){
		return false;
	}
	
	public String getCompoundIdColumnName(){
		return null;
	}
	
	public String getShortClassName(){
		return extractName(this.getClass().getName());
	}
	
	public String getFullClassName(){
		return this.getClass().getName();
	}
	
	private static String extractName(String className){
		String[] parts = className.split("\\.");
		return parts[parts.length - 1];
	}
	
}
