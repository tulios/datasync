package com.datasync.service;

import java.text.SimpleDateFormat;
import java.util.Date;

import javax.persistence.EntityManager;
import javax.persistence.Query;

import com.datasync.jpa.Config;
import com.datasync.ui.MainFrame;

public class BackupLocalDatabaseService implements IService {

	private EntityManager localEm;
	private String dir;
	
	public BackupLocalDatabaseService(String dir){
		this.dir = dir;
	}
	
	@Override
	public void execute() throws Exception {
		MainFrame.getInstance().setProgressBarIndetermined(true);
		try{
			this.createQuery(this.dir).executeUpdate();
			MainFrame.getInstance().setProgressBarValue(100);
		}
		catch (Exception e) {
			String mensagem = e.getMessage();
			throw new Exception("Para realizar o backup, " +
					"o banco de dados deve ter acesso ao diretório selecionado\n\n"+mensagem);
		} 
		finally {
			MainFrame.getInstance().setProgressBarIndetermined(false);
		}
	}

	@Override
	public void setLocalEntityManager(EntityManager localEm) {
		this.localEm = localEm;
	}
	
	private Query createQuery(String dir) {
		Query query = localEm.createNativeQuery("BACKUP DATABASE :database TO DISK = :filePath");
		
		String localDBName = Config.getInstance().getProperty("banco_local");

		if(localDBName == null || localDBName.length() <= 0){
			localDBName = "BD_CUSTO";
		}
		
		query.setParameter("database", localDBName);
		query.setParameter("filePath", createBackupFileName(dir, localDBName));
		
		return query;
	}
	
	private String createBackupFileName(String dir, String localDBName){
		
		Date data = new Date();
		SimpleDateFormat simpleDateFormat = new SimpleDateFormat("dd-MM-yyyy");
		
		String fileName = dir+"\\"+localDBName+"-"+simpleDateFormat.format(data)+".bak";
		
		return fileName;
	}

	@Override
	public void setRemoteEntityManager(EntityManager remoteEm) {
		// TODO Auto-generated method stub
	}
}
