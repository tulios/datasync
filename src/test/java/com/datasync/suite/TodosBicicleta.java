package com.datasync.suite;

import org.junit.runner.RunWith;
import org.junit.runners.Suite;
import org.junit.runners.Suite.SuiteClasses;

import com.datasync.models.bicicleta.aluno.TesteTblacidenteescola;
import com.datasync.models.bicicleta.aluno.TesteTblacompanhanteescola;
import com.datasync.models.bicicleta.aluno.TesteTblatividade;
import com.datasync.models.bicicleta.aluno.TesteTblcabecalhoaluno;
import com.datasync.models.bicicleta.aluno.TesteTbldefeitobicicleta;
import com.datasync.models.bicicleta.aluno.TesteTblmelhoria;

@RunWith(value=Suite.class)
@SuiteClasses({ 
	TesteTblcabecalhoaluno.class,
	TesteTblatividade.class,
	TesteTblacidenteescola.class,
	TesteTblacompanhanteescola.class,
	TesteTbldefeitobicicleta.class,
	TesteTblmelhoria.class
})
public class TodosBicicleta {
}
