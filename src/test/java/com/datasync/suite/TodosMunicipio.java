package com.datasync.suite;

import org.junit.runner.RunWith;
import org.junit.runners.Suite;
import org.junit.runners.Suite.SuiteClasses;

import com.datasync.models.barco.municipio.TesteTblcabecalhomunicipio;
import com.datasync.models.barco.municipio.TesteTblitensmunicipio;
import com.datasync.models.barco.municipio.TesteTbloutrositensmunicipio;
import com.datasync.models.barco.municipio.TesteTblpostoabastecimento1;
import com.datasync.models.barco.municipio.TesteTblpostoabastecimento2;
import com.datasync.models.barco.municipio.TesteTblpostoabastecimento3;
import com.datasync.models.barco.municipio.TesteTblserviçosemergenciaismunicipio;

@RunWith(value=Suite.class)
@SuiteClasses({  
	//Municipio
	TesteTblcabecalhomunicipio.class,
	TesteTblitensmunicipio.class,
	TesteTbloutrositensmunicipio.class,
	TesteTblpostoabastecimento1.class,
	TesteTblpostoabastecimento2.class,
	TesteTblpostoabastecimento3.class,
	TesteTblserviçosemergenciaismunicipio.class
})
public class TodosMunicipio {

}
