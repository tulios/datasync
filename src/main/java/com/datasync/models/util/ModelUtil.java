package com.datasync.models.util;

import java.util.ArrayList;
import java.util.List;

import com.datasync.models.IndexableEntity;
import com.datasync.models.barco.condutor.TblBarcoCabecalhoCondutor;
import com.datasync.models.barco.condutor.TblCaracterizacaoCondutor;
import com.datasync.models.barco.condutor.TblIdentificacaoCondutor;
import com.datasync.models.barco.condutor.TblInformacaoCondutor;
import com.datasync.models.barco.condutor.TblInformacaoCondutorAvisoAluno;
import com.datasync.models.barco.condutor.TblInformacaoCondutorContrato;
import com.datasync.models.barco.condutor.TblInformacaoCondutorDonoBarco;
import com.datasync.models.barco.condutor.TblInformacaoCondutorEscolheBarco;
import com.datasync.models.barco.condutor.TblInformacaoCondutorEstrago;
import com.datasync.models.barco.condutor.TblInformacaoCondutorFrequencia;
import com.datasync.models.barco.condutor.TblInformacaoCondutorGuardaBarco;
import com.datasync.models.barco.condutor.TblInformacaoCondutorMotivoQuebra;
import com.datasync.models.barco.condutor.TblInformacaoCondutorOutroAcompanhante;
import com.datasync.models.barco.condutor.TblInformacaoCondutorPagaManutencao;
import com.datasync.models.barco.condutor.TblInformacaoCondutorPercursoTempo;
import com.datasync.models.barco.condutor.TblInformacaoCondutorQuandoManutencao;
import com.datasync.models.barco.condutor.TblInformacaoCondutorRealizaManutencao;
import com.datasync.models.barco.condutor.TblInformacaoCondutorRealizaReparo;
import com.datasync.models.barco.condutor.TblInformacaoCondutorServico;
import com.datasync.models.barco.condutor.TblInformacaoCondutorTrabalhaRota;
import com.datasync.models.barco.condutor.TblNovaLanchaCondutor;
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
			//Condutor
			indexables.add(new TblBarcoCabecalhoCondutor());
			indexables.add(new TblCaracterizacaoCondutor());
			indexables.add(new TblIdentificacaoCondutor());
			indexables.add(new TblInformacaoCondutor());
			indexables.add(new TblInformacaoCondutorAvisoAluno());
			indexables.add(new TblInformacaoCondutorContrato());
			indexables.add(new TblInformacaoCondutorDonoBarco());
			indexables.add(new TblInformacaoCondutorEscolheBarco());
			indexables.add(new TblInformacaoCondutorEstrago());
			indexables.add(new TblInformacaoCondutorFrequencia());
			indexables.add(new TblInformacaoCondutorGuardaBarco());
			indexables.add(new TblInformacaoCondutorMotivoQuebra());
			indexables.add(new TblInformacaoCondutorOutroAcompanhante());
			indexables.add(new TblInformacaoCondutorPagaManutencao());
			indexables.add(new TblInformacaoCondutorPercursoTempo());
			indexables.add(new TblInformacaoCondutorQuandoManutencao());
			indexables.add(new TblInformacaoCondutorRealizaManutencao());
			indexables.add(new TblInformacaoCondutorRealizaReparo());
			indexables.add(new TblInformacaoCondutorServico());
			indexables.add(new TblInformacaoCondutorTrabalhaRota());
			
			indexables.add(new TblNovaLanchaCondutor());
		}
		
		return indexables;
	}
	
}
