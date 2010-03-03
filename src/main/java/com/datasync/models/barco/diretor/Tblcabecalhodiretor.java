package com.datasync.models.barco.diretor;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;

import com.datasync.models.IndexableEntity;

import java.sql.Timestamp;

@Entity
@Table(name = "tblCabecalhoDiretor")
@SuppressWarnings("serial")
public class Tblcabecalhodiretor extends IndexableEntity{

    @Id
    @Column(name = "IdFormulario")
    private String idformulario;
    @Column(name = "Pesquisador")
    private String pesquisador;
    @Column(name = "IdMunicipio")
    private Integer idmunicipio;
    @Column(name = "IdINEP")
    private Integer idinep;
    @Column(name = "DataColeta")
    private Timestamp datacoleta;
    @Column(name = "Foto")
    private String foto;
    @Column(name = "Rota")
    private String rota;
    @Column(name = "TempoInicio")
    private String tempoinicio;
    @Column(name = "TempoTermino")
    private String tempotermino;
    @Column(name = "IdRota")
    private Integer idRota;

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

    public void setIdinep(Integer idinep){
        this.idinep = idinep;
    }

    public Integer getIdinep(){
        return idinep;
    }

    public void setDatacoleta(Timestamp datacoleta){
        this.datacoleta = datacoleta;
    }

    public Timestamp getDatacoleta(){
        return datacoleta;
    }

    public void setFoto(String foto){
        this.foto = foto;
    }

    public String getFoto(){
        return foto;
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

	public Integer getIdRota() {
		return idRota;
	}

	public void setIdRota(Integer idRota) {
		this.idRota = idRota;
	}

}
