package com.datasync;

import java.util.List;

import com.datasync.jpa.Config;
import com.datasync.models.IndexableEntity;
import com.datasync.models.util.ModelUtil;
import com.datasync.service.SyncDatabasesService;
import com.datasync.service.runner.ServiceRunner;
import com.datasync.service.runner.SyncServiceRunner;
import com.datasync.ui.Processar;

public final class ProcessarSincronizacao extends Processar {

	private List<IndexableEntity> indexables;

	public ProcessarSincronizacao() {
		indexables = ModelUtil.getIndexables(Config.getInstance().getModelo());
		service = new SyncDatabasesService(indexables);
	}
	
	@Override
	public void run() {
		if (indexables == null || indexables.size() == 0){
			System.exit(-1);
		}
		
		super.run();
	}

	@Override
	protected ServiceRunner getServiceRunner() {
		return new SyncServiceRunner();
	}
	
}
