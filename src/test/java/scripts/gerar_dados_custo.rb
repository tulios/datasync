QUANTIDADE = 30

hash = {
  :TblCabecalhoCondutor => {
    :IdFormulario => 9,
    :Municipio    => 40,
    :UF           => 2,
    :Pesquisador  => 20,
    :DataColeta   => 10,
    :Responsavel  => 50
  },
  :TblCabecalhoEmbarcacao => {
    :IdFormulario => 9,
    :Municipio    => 40,
    :UF           => 2,
    :Pesquisador  => 20,
    :DataColeta   => 10,
    :Responsavel  => 50
  },
  :TblCabecalhoMecanico => {
    :IdFormulario => 9,
    :Municipio    => 40,
    :UF           => 2,
    :Pesquisador  => 20,
    :DataColeta   => 10,
    :Responsavel  => 50
  },
  :TblCabecalhoMonitor => {
    :IdFormulario => 9,
    :Municipio    => 40,
    :UF           => 2,
    :Pesquisador  => 20,
    :DataColeta   => 10,
    :Responsavel  => 50
  }
}
",
  :TblIdCondutor => {
    :IdFormulario     => 9,
    :Nome             => 50,
    :Identidade       => 15,
    :IdentidadeUF     => 2,
    :DataNasc         => 10,
    :Escolaridade     => 14,
    :EstadoCivil      => 10,
    :NumeroEmbarcacao => 15,
    :Habilitacao      => 30,
    :Categoria        => 30,
    :TempoExperiencia => 22,
    :Salario          => 8,
    :CondutorReserva  => 3
  },
  :TblIdEmbarcacao => {
    :IdFormulario          =>   9,
    :NumeroEmbarcacao      =>   15,
    :NomeEmbarcacao        =>   40,
    :UfEmbarcacao          =>   2,
    :AnoFabricacao         =>   4,
    :TipoMaterial          =>   10,
    :TipoEmbarcacao        =>   1,
    :PosicaoMotor          =>   2,
    :QuantMotor            =>   2,
    :PotenciaMotor         =>   5,
    :TipoCombustivel       =>   15,
    :CapacidadeIndicada    =>   3,
    :CapacidadeInformada   =>   3,
    :SituacaoEmbarcacao    =>   3,
    :EmbarcacaoReserva     =>   3,
    :PropriedadeEmbarcacao =>   25,
    :PropriedadeOutros     =>   20,
    :ValorEmbarcacao       =>   10,
    :DataAquisicao         =>   10,
    :TempoChuva            =>   10,
    :TempoSeca             =>   10,
    :MesLetivoChuva        =>   2,
    :MesLetivoSeca         =>   2,
    :QuantidadeRota        =>   2,
    :RotaOD                =>   100,
    :AlunosMatutino        =>   3,
    :AlunosVespertino      =>   3,
    :AlunosNoturno         =>   3,
    :ValorCusto            =>   10,
    :ValorUnidade          =>   20
  },
  :TblIdMecanico => {
    :IdFormulario     =>   9,
    :Nome             =>   50,
    :Identidade       =>   15,
    :IdentidadeUF     =>   2,
    :DataNasc         =>   10,
    :Escolaridade     =>   14,
    :TempoExperiencia =>   10,
    :Salario          =>   8
  },
  :TblIdMonitor => {
    :IdFormulario     =>   9,
    :Nome             =>   50,
    :Identidade       =>   15,
    :IdentidadeUF     =>   2,
    :DataNasc         =>   10,
    :Escolaridade     =>   14,
    :EstadoCivil      =>   10,
    :NumeroEmbarcacao =>   15,
    :TempoExperiencia =>   22,
    :Salario          =>   8
  }
}                    
"
def columns(hash)
  str = []
  hash.keys.each do |key|
    str << "#{key.to_s}"
  end    
  "(#{str.join(',')})"
end   
        
@@value = 0                      
def next_value   
  @@value += 1
  @@value
end                      
                                                        
def values(hash)
  str = []     
  value = next_value
  hash.keys.each do |key|
    if value.to_s.length > hash[key]
      str << "'a'"
    else
      str << "'#{value}'"
    end
  end    
  "(#{str.join(',')})"
end
   
sql = []
hash.keys.each do |key|
  
  for x in (1..QUANTIDADE) do
    sql << "insert into #{key} #{columns(hash[key])} values #{values(hash[key])};"
  end
  sql << "\n"
  
end

puts sql