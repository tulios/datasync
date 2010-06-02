package com.datasync.suite;

import org.junit.runner.RunWith;
import org.junit.runners.Suite;
import org.junit.runners.Suite.SuiteClasses;

import com.datasync.models.bicicleta.aluno.TesteTblatividade;
import com.datasync.models.bicicleta.aluno.TesteTblcabecalhoaluno;

@RunWith(value=Suite.class)
@SuiteClasses({ 
	TesteTblcabecalhoaluno.class,
	TesteTblatividade.class
})
public class TodosBicicleta {
}
