package com.datasync.ui;

import org.apache.log4j.Logger;

import com.datasync.service.IService;
import com.datasync.service.runner.ServiceRunner;

public abstract class Processar extends Thread {

	private static Logger log = Logger.getLogger(Processar.class);
	protected IService service;
	
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
		try {
			MainFrame.getInstance().setTitle("Data Sync - NÃO FECHE ESTE PROGRAMA!");

			long start = System.currentTimeMillis();
			
			ServiceRunner runner = new ServiceRunner();
			runner.run(this.service);

			long time = System.currentTimeMillis() - start;
			
			MainFrame.getInstance().setTitle("Data Sync");
			MainFrame.getInstance().setMensagem("Tarefa concluida! Tempo gasto: " + formatTime(time));
			MainFrame.getInstance().habilitarSync();

		} catch (Exception e) {
			log.error(e.getMessage());
			e.printStackTrace();
		}
	}

}




















