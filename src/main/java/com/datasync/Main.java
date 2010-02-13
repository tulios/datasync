package com.datasync;

import java.util.List;

import com.datasync.models.IndexableEntity;
import com.datasync.models.util.ModelUtil;
import com.datasync.service.SyncLocalDatabaseService;
import com.datasync.service.runner.ServiceRunner;

public class Main {
	
    public static void main(String[] args) throws Exception {
    	List<IndexableEntity> indexables = ModelUtil.getIndexables("custo");
    	if (indexables == null || indexables.size() == 0){
    		System.exit(-1);
    	}
    	
    	ServiceRunner runner = new ServiceRunner();
    	runner.run(new SyncLocalDatabaseService(indexables));
    }
    
}
