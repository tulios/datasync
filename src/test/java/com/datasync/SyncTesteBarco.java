package com.datasync;

import java.util.List;

import org.junit.Test;

import com.datasync.models.IndexableEntity;
import com.datasync.models.TesteBarco;
import com.datasync.models.util.ModelUtil;
import com.datasync.service.SyncDatabasesService;
import com.datasync.service.runner.ServiceRunner;
import com.datasync.service.runner.SyncServiceRunner;

public class SyncTesteBarco extends TesteBarco {


	@Test
	public void verificarSincroniaTodosModelos() throws Exception {
		
		List<IndexableEntity> indexables = ModelUtil.getIndexables("barco");
		SyncDatabasesService service = new SyncDatabasesService(indexables);
		
		ServiceRunner serviceRunner = new SyncServiceRunner();
		serviceRunner.run(service);
	}
}
