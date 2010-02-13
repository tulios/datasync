package com.datasync.suite;

import org.junit.runner.RunWith;
import org.junit.runners.Suite;
import org.junit.runners.Suite.SuiteClasses;

import com.datasync.model.custo.TestTblCabecalhoCondutor;

@RunWith(value=Suite.class)
@SuiteClasses({  
	TestTblCabecalhoCondutor.class
})
public class Todos {
}
