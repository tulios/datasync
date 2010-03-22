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
    @Column(name = "QuantidadeFilhosIdadeEscolar")
    private Integer quantidadefilhosidadeescolar;
    @Column(name = "QuantidadeCasaConjuge")
    private Integer quantidadecasaconjuge;
    @Column(name = "QuantidadeCasaPrimos")
    private Integer quantidadecasaprimos;
    @Column(name = "QuantidadeCasaTio")
    private Integer quantidadecasatio;
    @Column(name = "CasaOutrosQuem")
    private String casaoutrosquem;
    @Column(name = "QuantidadeFamilia")
    private int quantidadeFamilia;
    @Column(name = "IdParentes")
    private int idParentes;
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

    public void setQuantidadecasaconjuge(Integer quantidadecasaconjuge){
        this.quantidadecasaconjuge = quantidadecasaconjuge;
    }

    public Integer getQuantidadecasaconjuge(){
        return quantidadecasaconjuge;
    }

    public void setQuantidadecasaprimos(Integer quantidadecasaprimos){
        this.quantidadecasaprimos = quantidadecasaprimos;
    }

    public Integer getQuantidadecasaprimos(){
        return quantidadecasaprimos;
    }

    public void setQuantidadecasatio(Integer quantidadecasatio){
        this.quantidadecasatio = quantidadecasatio;
    }

    public Integer getQuantidadecasatio(){
        return quantidadecasatio;
    }

    public void setCasaoutrosquem(String casaoutrosquem){
        this.casaoutrosquem = casaoutrosquem;
    }

    public String getCasaoutrosquem(){
        return casaoutrosquem;
    }

	public int getQuantidadeFamilia() {
		return quantidadeFamilia;
	}

	public void setQuantidadeFamilia(int quantidadeFamilia) {
		this.quantidadeFamilia = quantidadeFamilia;
	}

	public int getIdParentes() {
		return idParentes;
	}

	public void setIdParentes(int idParentes) {
		this.idParentes = idParentes;
	}

	public String getQuaisParentes() {
		return quaisParentes;
	}

	public void setQuaisParentes(String quaisParentes) {
		this.quaisParentes = quaisParentes;
	}

}
