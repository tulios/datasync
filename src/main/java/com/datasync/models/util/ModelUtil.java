package com.datasync.models.util;

import java.util.ArrayList;
import java.util.List;

import com.datasync.models.IndexableEntity;
import com.datasync.models.custo.TblCabecalhoCondutor;
import com.datasync.models.custo.TblCabecalhoEmbarcacao;

public class ModelUtil {

	public static List<IndexableEntity> getIndexables(String packageName){
		List<IndexableEntity> indexables = new ArrayList<IndexableEntity>();

		if (packageName.equalsIgnoreCase("custo")){
			indexables.add(new TblCabecalhoCondutor());
			indexables.add(new TblCabecalhoEmbarcacao());
			return indexables;
		}
		
		return indexables;
	}
	
}
