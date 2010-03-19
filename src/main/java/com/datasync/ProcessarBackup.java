package com.datasync;

import com.datasync.service.BackupLocalDatabaseService;
import com.datasync.service.runner.BackupServiceRunner;
import com.datasync.service.runner.ServiceRunner;
import com.datasync.ui.Processar;

public class ProcessarBackup extends Processar {

	public ProcessarBackup(String directory){
		this.service = new BackupLocalDatabaseService(directory);
	}

	@Override
	protected ServiceRunner getServiceRunner() {
		return new BackupServiceRunner();
	}
}
