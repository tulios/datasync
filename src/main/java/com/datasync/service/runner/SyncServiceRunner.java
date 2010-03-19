package com.datasync.service.runner;

import com.datasync.service.IService;


public class SyncServiceRunner extends ServiceRunner {
	
	public boolean run(IService service) throws Exception {
		try{
			conectToLocalServer();
			conectToRemoteServer();
			
			this.execute(service);
			
			commitLocalExecution();
			commitRemoteExecution();

		} catch (Exception e) {
			log.error(e.getMessage());
			e.printStackTrace();
			return false;
		}
		
		return true;
	}
}
