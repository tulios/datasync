package com.datasync.models.util;

import java.util.ArrayList;
import java.util.List;

import com.datasync.models.IndexableEntity;
import com.datasync.models.custo.TblCabecalhoCondutor;
import com.datasync.models.custo.TblCabecalhoEmbarcacao;
import com.datasync.models.custo.TblCabecalhoMecanico;
import com.datasync.models.custo.TblCabecalhoMonitor;
import com.datasync.models.custo.TblIdCondutor;

public class ModelUtil {

	public static List<IndexableEntity> getIndexables(String packageName){
		List<IndexableEntity> indexables = new ArrayList<IndexableEntity>();

		if (packageName.equalsIgnoreCase("custo")){
			indexables.add(new TblCabecalhoCondutor());
			indexables.add(new TblIdCondutor());
			
			indexables.add(new TblCabecalhoEmbarcacao());
			indexables.add(new TblCabecalhoMecanico());
			indexables.add(new TblCabecalhoMonitor());
			return indexables;
		}
		
		return indexables;
	}
	
}
