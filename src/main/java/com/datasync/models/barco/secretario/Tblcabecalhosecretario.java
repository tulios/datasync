package com.datasync.models.barco.secretario;

import java.sql.Timestamp;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;

import com.datasync.models.IndexableEntity;

@Entity
@Table(name = "tblCabecalhoSecretario")
@SuppressWarnings("serial")
public class Tblcabecalhosecretario extends IndexableEntity{

    @Id
    @Column(name = "IdFormulario")
    private String idformulario;
    @Column(name = "Pesquisador")
    private String pesquisador;
    @Column(name = "IdMunicipio")
    private Integer idmunicipio;
    @Column(name = "DataColeta")
    private Timestamp datacoleta;
    @Column(name = "TempoInicio")
    private String tempoinicio;
    @Column(name = "TempoTermino")
    private String tempotermino;
    @Column(name = "Observacao")
    private String observacao;

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

    public void setIdmunicipio(Integer idmunicipio){
        this.idmunicipio = idmunicipio;
    }

    public Integer getIdmunicipio(){
        return idmunicipio;
    }

    public void setDatacoleta(Timestamp datacoleta){
        this.datacoleta = datacoleta;
    }

    public Timestamp getDatacoleta(){
        return datacoleta;
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

}
