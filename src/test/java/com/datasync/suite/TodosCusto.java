package com.datasync.suite;

import org.junit.runner.RunWith;
import org.junit.runners.Suite;
import org.junit.runners.Suite.SuiteClasses;

import com.datasync.models.custo.TestTblCabecalhoCondutor;
import com.datasync.models.custo.TestTblCabecalhoEmbarcacao;
import com.datasync.models.custo.TestTblCabecalhoMecanico;
import com.datasync.models.custo.TestTblCabecalhoMonitor;
import com.datasync.models.custo.TestTblIdCondutor;
import com.datasync.models.custo.TestTblIdEmbarcacao;
import com.datasync.models.custo.TestTblIdMecanico;
import com.datasync.models.custo.TestTblIdMonitor;
import com.datasync.models.custo.embarcado.TesteTblcabecalhoembarcada;
import com.datasync.models.custo.embarcado.TesteTblidentificacaomonitor;
import com.datasync.models.custo.embarcado.TesteTblidentificacaorota;
import com.datasync.models.custo.embarcado.TesteTblidentificacaoveiculo;
import com.datasync.models.custo.embarcado.TesteTblsobedesce;

@RunWith(value=Suite.class)
@SuiteClasses({  
	//Custo
	TestTblCabecalhoCondutor.class,
	TestTblCabecalhoEmbarcacao.class,
	TestTblCabecalhoMecanico.class,
	TestTblCabecalhoMonitor.class,
	TestTblIdCondutor.class,
	TestTblIdEmbarcacao.class,
	TestTblIdMecanico.class,
	TestTblIdMonitor.class,
	
	//Embarcado
	TesteTblcabecalhoembarcada.class,
	TesteTblidentificacaomonitor.class,
	TesteTblidentificacaorota.class,
	TesteTblidentificacaoveiculo.class,
	TesteTblsobedesce.class
	
})
public class TodosCusto {
}
