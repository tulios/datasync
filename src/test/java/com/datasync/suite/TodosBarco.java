package com.datasync.suite;

import org.junit.runner.RunWith;
import org.junit.runners.Suite;
import org.junit.runners.Suite.SuiteClasses;

import com.datasync.model.barco.TesteTblBarcoCabecalhoCondutor;
import com.datasync.model.barco.TesteTblCaracterizacaoCondutor;

@RunWith(value=Suite.class)
@SuiteClasses({  
	TesteTblBarcoCabecalhoCondutor.class,
	TesteTblCaracterizacaoCondutor.class
})
public class TodosBarco {
}
