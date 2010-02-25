package com.datasync.service;

import javax.persistence.EntityManager;
import javax.persistence.Query;

import com.datasync.ui.MainFrame;

public class BackupLocalDatabaseService implements IService {

	private EntityManager localEm;
	private String filePath;
	
	public BackupLocalDatabaseService(String filePath){
		this.filePath = filePath;
	}
	
	@Override
	public void execute() throws Exception {
		MainFrame.getInstance().setProgressBarIndetermined(true);
		try{
			this.createQuery(this.filePath).executeUpdate();
		}
		catch (Exception e) {
			throw e;
		} 
		finally {
			MainFrame.getInstance().setProgressBarIndetermined(false);
		}
	}

	@Override
	public void setEntityManagers(EntityManager localEm, EntityManager serverEm) {
		this.localEm = localEm;
	}

	private Query createQuery(String filePath) {
		Query query = localEm.createNativeQuery("BACKUP DATABASE BD_CUSTO TO DISK = :filePath");
		query.setParameter("filePath", filePath);
		return query;
	}
}
