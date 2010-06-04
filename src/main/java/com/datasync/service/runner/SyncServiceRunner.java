package com.datasync.service.runner;

import com.datasync.service.IService;


public class SyncServiceRunner extends ServiceRunner {
	
	public boolean run(IService service) throws Exception {
		try{
			connectToLocalServer();
			connectToRemoteServer();
			
			this.execute(service);
			
			commitLocalExecution();
			commitRemoteExecution();

		} catch (Exception e) {
			log.error("SyncServiceRunner#run: "+ e.getMessage());
			e.printStackTrace();
			return false;
		}
		
		return true;
	}
}
