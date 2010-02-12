package com.datasync;

import java.util.ArrayList;
import java.util.List;

import com.datasync.models.Example;
import com.datasync.models.IndexableEntity;
import com.datasync.service.SyncLocalDatabaseService;
import com.datasync.service.runner.ServiceRunner;

public class Main {
	
    public static void main(String[] args) throws Exception {
    	List<IndexableEntity> indexables = new ArrayList<IndexableEntity>();
    	indexables.add(new Example());
    	
    	ServiceRunner runner = new ServiceRunner();
    	runner.run(new SyncLocalDatabaseService(indexables));
    }
    
}
