package com.datasync.service;

import javax.persistence.EntityManager;

public interface IService {

	void setEntityManagers(EntityManager localEm, EntityManager serverEm);
	void execute() throws Exception;
	
}
