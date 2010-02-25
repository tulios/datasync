package com.datasync.models.util;

import java.util.ArrayList;
import java.util.List;

import com.datasync.models.IndexableEntity;
import com.datasync.models.barco.TblBarcoCabecalhoCondutor;
import com.datasync.models.barco.TblCaracterizacaoCondutor;
import com.datasync.models.barco.TblIdentificacaoCondutor;
import com.datasync.models.barco.TblInformacaoCondutor;
import com.datasync.models.barco.TblInformacaoCondutorAvisoAluno;
import com.datasync.models.barco.TblInformacaoCondutorDonoBarco;
import com.datasync.models.barco.TblInformacaoCondutorFrequencia;
import com.datasync.models.custo.TblCabecalhoCondutor;
import com.datasync.models.custo.TblCabecalhoEmbarcacao;
import com.datasync.models.custo.TblCabecalhoMecanico;
import com.datasync.models.custo.TblCabecalhoMonitor;
import com.datasync.models.custo.TblIdCondutor;
import com.datasync.models.custo.TblIdEmbarcacao;
import com.datasync.models.custo.TblIdMecanico;
import com.datasync.models.custo.TblIdMonitor;

public class ModelUtil {

	public static final String CUSTO = "custo";
	public static final String BARCO = "barco";
	
	public static List<IndexableEntity> getIndexables(String packageName){
		List<IndexableEntity> indexables = new ArrayList<IndexableEntity>();

		if (packageName.equalsIgnoreCase(CUSTO)){
			indexables.add(new TblCabecalhoCondutor());
			indexables.add(new TblIdCondutor());
			
			indexables.add(new TblCabecalhoEmbarcacao());
			indexables.add(new TblIdEmbarcacao());
			
			indexables.add(new TblCabecalhoMecanico());
			indexables.add(new TblIdMecanico());
			
			indexables.add(new TblCabecalhoMonitor());
			indexables.add(new TblIdMonitor());
			return indexables;
			
		}else if (packageName.equalsIgnoreCase(BARCO)){
			indexables.add(new TblBarcoCabecalhoCondutor());
			indexables.add(new TblCaracterizacaoCondutor());
			indexables.add(new TblIdentificacaoCondutor());
			indexables.add(new TblInformacaoCondutor());
			indexables.add(new TblInformacaoCondutorFrequencia());
			indexables.add(new TblInformacaoCondutorDonoBarco());
			indexables.add(new TblInformacaoCondutorAvisoAluno());
		}
		
		return indexables;
	}
	
}
