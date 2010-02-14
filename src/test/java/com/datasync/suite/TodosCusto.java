package com.datasync.suite;

import org.junit.runner.RunWith;
import org.junit.runners.Suite;
import org.junit.runners.Suite.SuiteClasses;

import com.datasync.model.custo.TestTblCabecalhoCondutor;
import com.datasync.model.custo.TestTblCabecalhoEmbarcacao;
import com.datasync.model.custo.TestTblCabecalhoMecanico;
import com.datasync.model.custo.TestTblCabecalhoMonitor;
import com.datasync.model.custo.TestTblIdCondutor;
import com.datasync.model.custo.TestTblIdEmbarcacao;
import com.datasync.model.custo.TestTblIdMecanico;
import com.datasync.model.custo.TestTblIdMonitor;

@RunWith(value=Suite.class)
@SuiteClasses({  
	TestTblCabecalhoCondutor.class,
	TestTblCabecalhoEmbarcacao.class,
	TestTblCabecalhoMecanico.class,
	TestTblCabecalhoMonitor.class,
	TestTblIdCondutor.class,
	TestTblIdEmbarcacao.class,
	TestTblIdMecanico.class,
	TestTblIdMonitor.class
})
public class TodosCusto {
}
