package com.datasync.service.runner;

import com.datasync.service.IService;


public class BackupServiceRunner extends ServiceRunner {
	
	public boolean run(IService service) throws Exception {
		try{
			conectToLocalServer();
			execute(service);
			commitLocalExecution();

		} catch (Exception e) {
			log.error(e.getMessage());
			e.printStackTrace();
			return false;
		}
		
		return true;
	}
}
