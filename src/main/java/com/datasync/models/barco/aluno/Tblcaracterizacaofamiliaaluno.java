package com.datasync.models.barco.aluno;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;

import com.datasync.models.IndexableEntity;

@Entity
@Table(name = "tblCaracterizacaoFamiliaAluno")
@SuppressWarnings("serial")
public class Tblcaracterizacaofamiliaaluno extends IndexableEntity{

    @Id
    @Column(name = "IdFormulario")
    private String idformulario;
    @Column(name = "TemFilhos")
    private String temfilhos;
    @Column(name = "QuantidadeFilhos")
    private int quantidadeFilhos;
    @Column(name = "QuantidadeFilhosIdadeEscolar")
    private Integer quantidadefilhosidadeescolar;
    @Column(name = "QuantidadeFamilia")
    private int quantidadeFamilia;

    @Override
    public String getIdColumnName() {
        return "idformulario";
    }

    @Override
    public String getIndexId() {
        return getIdformulario();
    }

    public void setIdformulario(String idformulario){
        this.idformulario = idformulario;
    }

    public String getIdformulario(){
        return idformulario;
    }

    public void setTemfilhos(String temfilhos){
        this.temfilhos = temfilhos;
    }

    public String getTemfilhos(){
        return temfilhos;
    }

    public void setQuantidadefilhosidadeescolar(Integer quantidadefilhosidadeescolar){
        this.quantidadefilhosidadeescolar = quantidadefilhosidadeescolar;
    }

    public Integer getQuantidadefilhosidadeescolar(){
        return quantidadefilhosidadeescolar;
    }

	public int getQuantidadeFamilia() {
		return quantidadeFamilia;
	}

	public void setQuantidadeFamilia(int quantidadeFamilia) {
		this.quantidadeFamilia = quantidadeFamilia;
	}

	public int getQuantidadeFilhos() {
		return quantidadeFilhos;
	}

	public void setQuantidadeFilhos(int quantidadeFilhos) {
		this.quantidadeFilhos = quantidadeFilhos;
	}

}
