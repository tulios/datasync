package com.datasync.models.barco.pais;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;

import com.datasync.models.IndexableEntity;

@Entity
@Table(name = "tblCaracterizacaoFamiliaPais")
@SuppressWarnings("serial")
public class Tblcaracterizacaofamiliapais extends IndexableEntity{

    @Id
    @Column(name = "IdFormulario")
    private String idformulario;
    @Column(name = "OcupacaoPai")
    private String ocupacaopai;
    @Column(name = "OcupacaoMae")
    private String ocupacaomae;
    @Column(name = "QuantidadeFilhos")
    private Integer quantidadefilhos;
    @Column(name = "QuantidadeFilhosIdadeEscolar")
    private Integer quantidadefilhosidadeescolar;
    @Column(name = "QuantidadeAjudamSustento")
    private Integer quantidadeajudamsustento;
    @Column(name = "Observacao")
    private String observacao;
    @Column(name = "QuantidadeFamilia")
    private int quantidadeFamilia;
    @Column(name = "Parentes")
    private int parentes;
    @Column(name = "QuaisParentes")
    private String quaisParentes;

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

    public void setOcupacaopai(String ocupacaopai){
        this.ocupacaopai = ocupacaopai;
    }

    public String getOcupacaopai(){
        return ocupacaopai;
    }

    public void setOcupacaomae(String ocupacaomae){
        this.ocupacaomae = ocupacaomae;
    }

    public String getOcupacaomae(){
        return ocupacaomae;
    }

    public void setQuantidadefilhos(Integer quantidadefilhos){
        this.quantidadefilhos = quantidadefilhos;
    }

    public Integer getQuantidadefilhos(){
        return quantidadefilhos;
    }

    public void setQuantidadefilhosidadeescolar(Integer quantidadefilhosidadeescolar){
        this.quantidadefilhosidadeescolar = quantidadefilhosidadeescolar;
    }

    public Integer getQuantidadefilhosidadeescolar(){
        return quantidadefilhosidadeescolar;
    }

    public void setQuantidadeajudamsustento(Integer quantidadeajudamsustento){
        this.quantidadeajudamsustento = quantidadeajudamsustento;
    }

    public Integer getQuantidadeajudamsustento(){
        return quantidadeajudamsustento;
    }

	public String getObservacao() {
		return observacao;
	}

	public void setObservacao(String observacao) {
		this.observacao = observacao;
	}

	public int getQuantidadeFamilia() {
		return quantidadeFamilia;
	}

	public void setQuantidadeFamilia(int quantidadeFamilia) {
		this.quantidadeFamilia = quantidadeFamilia;
	}

	public int getParentes() {
		return parentes;
	}

	public void setParentes(int parentes) {
		this.parentes = parentes;
	}

	public String getQuaisParentes() {
		return quaisParentes;
	}

	public void setQuaisParentes(String quaisParentes) {
		this.quaisParentes = quaisParentes;
	}

}
