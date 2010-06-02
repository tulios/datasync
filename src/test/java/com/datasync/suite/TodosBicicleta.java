package com.datasync.suite;

import org.junit.runner.RunWith;
import org.junit.runners.Suite;
import org.junit.runners.Suite.SuiteClasses;

import com.datasync.models.bicicleta.TesteTblcabecalhoaluno;

@RunWith(value=Suite.class)
@SuiteClasses({ 
	TesteTblcabecalhoaluno.class
})
public class TodosBicicleta {
}
