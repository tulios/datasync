package com.datasync.models.barco.aluno;

import java.sql.Timestamp;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;

import com.datasync.models.IndexableEntity;

@Entity
@Table(name = "tblCabecalhoAluno")
@SuppressWarnings("serial")
public class Tblcabecalhoaluno extends IndexableEntity{

    @Id
    @Column(name = "IdFormulario")
    private String idformulario;
    @Column(name = "Pesquisador")
    private String pesquisador;
    @Column(name = "DataColeta")
    private Timestamp datacoleta;
    @Column(name = "IdINEP")
    private Integer idinep;
    @Column(name = "IdMunicipio")
    private Integer idmunicipio;
    @Column(name = "Rota")
    private String rota;
    @Column(name = "IdRota")
    private Integer idrota;
    @Column(name = "TempoInicio")
    private String tempoinicio;
    @Column(name = "TempoTermino")
    private String tempotermino;
    @Column(name = "Observacao")
    private String observacao;
    @Column(name = "NomeEscola")
    private String nomeEscola;

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

    public void setPesquisador(String pesquisador){
        this.pesquisador = pesquisador;
    }

    public String getPesquisador(){
        return pesquisador;
    }

    public void setDatacoleta(Timestamp datacoleta){
        this.datacoleta = datacoleta;
    }

    public Timestamp getDatacoleta(){
        return datacoleta;
    }

    public void setIdinep(Integer idinep){
        this.idinep = idinep;
    }

    public Integer getIdinep(){
        return idinep;
    }

    public void setIdmunicipio(Integer idmunicipio){
        this.idmunicipio = idmunicipio;
    }

    public Integer getIdmunicipio(){
        return idmunicipio;
    }

    public void setRota(String rota){
        this.rota = rota;
    }

    public String getRota(){
        return rota;
    }

    public void setIdrota(Integer idrota){
        this.idrota = idrota;
    }

    public Integer getIdrota(){
        return idrota;
    }

    public void setTempoinicio(String tempoinicio){
        this.tempoinicio = tempoinicio;
    }

    public String getTempoinicio(){
        return tempoinicio;
    }

    public void setTempotermino(String tempotermino){
        this.tempotermino = tempotermino;
    }

    public String getTempotermino(){
        return tempotermino;
    }

	public String getObservacao() {
		return observacao;
	}

	public void setObservacao(String observacao) {
		this.observacao = observacao;
	}

	public String getNomeEscola() {
		return nomeEscola;
	}

	public void setNomeEscola(String nomeEscola) {
		this.nomeEscola = nomeEscola;
	}
	
}
