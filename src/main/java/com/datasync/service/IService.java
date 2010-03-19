package com.datasync.service;

import javax.persistence.EntityManager;


public interface IService {
	void execute() throws Exception;
	void setLocalEntityManager(EntityManager localEm);
	void setRemoteEntityManager(EntityManager remoteEm);
}
