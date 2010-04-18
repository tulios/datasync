package com.datasync.suite;

import org.junit.runner.RunWith;
import org.junit.runners.Suite;
import org.junit.runners.Suite.SuiteClasses;

import com.datasync.models.barco.embarcacao.TesteTblcabecalhoembarcacao;
import com.datasync.models.barco.embarcacao.TesteTblcaracterizacaoembarcacao;
import com.datasync.models.barco.embarcacao.TesteTblcombustivelembarcacao;
import com.datasync.models.barco.embarcacao.TesteTblconservacaoembarcacao;
import com.datasync.models.barco.embarcacao.TesteTbldimensaoembarcacao;
import com.datasync.models.barco.embarcacao.TesteTblidentificacaoembarcacao;
import com.datasync.models.barco.embarcacao.TesteTblimagensembarcacao;
import com.datasync.models.barco.embarcacao.TesteTblmaterialassento;
import com.datasync.models.barco.embarcacao.TesteTblmaterialcasco;
import com.datasync.models.barco.embarcacao.TesteTblmaterialteto;
import com.datasync.models.barco.embarcacao.TesteTblpropriedadeembarcacao;
import com.datasync.models.barco.embarcacao.TesteTblsinalizacaonoturna;
import com.datasync.models.barco.embarcacao.TesteTbltripulacao;

@RunWith(value=Suite.class)
@SuiteClasses({  
	//Embarcacao
	TesteTblcabecalhoembarcacao.class,
	TesteTblcaracterizacaoembarcacao.class,
	TesteTblcombustivelembarcacao.class,
	TesteTblconservacaoembarcacao.class,
	TesteTbldimensaoembarcacao.class,
	TesteTblidentificacaoembarcacao.class,
	TesteTblimagensembarcacao.class,
	TesteTbltripulacao.class,
	TesteTblmaterialassento.class,
	TesteTblmaterialcasco.class,
	TesteTblmaterialteto.class,
	TesteTblpropriedadeembarcacao.class,
	TesteTblsinalizacaonoturna.class
})
public class TodosEmbarcacao {

}

