package com.datasync.models.barco.professor;

import java.sql.Timestamp;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;

import com.datasync.models.IndexableEntity;
import com.datasync.models.IndexableWithDifferentName;

@Entity(name = "com.datasync.models.barco.professor.Tblcabecalhoprofessor")
@Table(name = "tblCabecalhoProfessor")
@SuppressWarnings("serial")
public class Tblcabecalhoprofessor extends IndexableEntity implements IndexableWithDifferentName{

    @Id
    @Column(name = "IdFormulario")
    private String idformulario;
    @Column(name = "Pesquisador")
    private String pesquisador;
    @Column(name = "DataColeta")
    private Timestamp datacoleta;
    @Column(name = "IdMunicipio")
    private Integer idmunicipio;
    @Column(name = "IdINEP")
    private Integer idinep;
    @Column(name = "FotoEscola")
    private String fotoescola;
    @Column(name = "Rota")
    private String rota;
    @Column(name = "TempoInicio")
    private String tempoinicio;
    @Column(name = "TempoTermino")
    private String tempotermino;
    @Column(name = "IdRota")
    private int idRota;
    @Column(name = "Observacao")
    private String observacao;
    @Column(name = "NomeEscola")
    private String nomeEscola;

    @Override
    public String getDifferentName() {
    	return "com.datasync.models.barco.professor.Tblcabecalhoprofessor";
    }
    
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

    public void setIdmunicipio(Integer idmunicipio){
        this.idmunicipio = idmunicipio;
    }

    public Integer getIdmunicipio(){
        return idmunicipio;
    }

    public void setIdinep(Integer idinep){
        this.idinep = idinep;
    }

    public Integer getIdinep(){
        return idinep;
    }

    public void setFotoescola(String fotoescola){
        this.fotoescola = fotoescola;
    }

    public String getFotoescola(){
        return fotoescola;
    }

    public void setRota(String rota){
        this.rota = rota;
    }

    public String getRota(){
        return rota;
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

	public int getIdRota() {
		return idRota;
	}

	public void setIdRota(int idRota) {
		this.idRota = idRota;
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
