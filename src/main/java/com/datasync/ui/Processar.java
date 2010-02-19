package com.datasync.ui;

import java.util.List;

import org.apache.log4j.Logger;

import com.datasync.models.IndexableEntity;
import com.datasync.models.util.ModelUtil;
import com.datasync.service.SyncLocalDatabaseService;
import com.datasync.service.runner.ServiceRunner;

public class Processar extends Thread {

	private List<IndexableEntity> indexables;

	private static Logger log = Logger.getLogger(Processar.class);
	
	public Processar() {
		indexables = ModelUtil.getIndexables("custo");
	}

	private String formatTime(long time){
		long minutos = (time/1000)/60;
		time -= minutos * (1000 * 60);
		
		long segundos = time / 1000;
		time -= segundos * 1000;
		
		String mili = "" + time;
		if (mili.length() > 1) {
			mili = mili.substring(0, 2);
			
		}else if (mili.length() > 2){
			mili = mili.substring(0, 3);
		}
		
		return minutos + " min, " + segundos + " seg e " + mili + " ms";
	}
	
	@Override
	public void run() {
		if (indexables == null || indexables.size() == 0){
			System.exit(-1);
		}

		try {
			MainFrame.getInstance().setTitle("Data Sync - NÌO FECHE ESTE PROGRAMA!");

			long start = System.currentTimeMillis();
			
			ServiceRunner runner = new ServiceRunner();
			runner.run(new SyncLocalDatabaseService(indexables));

			long time = System.currentTimeMillis() - start;
			
			MainFrame.getInstance().setTitle("Data Sync");
			MainFrame.getInstance().setMensagem("Sincronizado! Tempo gasto: " + formatTime(time));
			MainFrame.getInstance().habilitarSync();

		} catch (Exception e) {
			log.error(e.getMessage());
			e.printStackTrace();
		}
	}

}




















