package com.datasync.suite;

import org.junit.runner.RunWith;
import org.junit.runners.Suite;
import org.junit.runners.Suite.SuiteClasses;

import com.datasync.model.barco.TesteTblBarcoCabecalhoCondutor;
import com.datasync.model.barco.TesteTblCaracterizacaoCondutor;
import com.datasync.model.barco.TesteTblIdentificacaoCondutor;
import com.datasync.model.barco.TesteTblInformacaoCondutor;

@RunWith(value=Suite.class)
@SuiteClasses({  
	TesteTblBarcoCabecalhoCondutor.class,
	TesteTblCaracterizacaoCondutor.class,
	TesteTblIdentificacaoCondutor.class,
	TesteTblInformacaoCondutor.class
})
public class TodosBarco {
}
