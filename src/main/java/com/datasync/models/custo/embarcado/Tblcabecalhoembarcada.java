package com.datasync.models.custo.embarcado;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;

import com.datasync.models.IndexableEntity;

@Entity
@Table(name = "tblCabecalhoEmbarcada")
@SuppressWarnings("serial")
public class Tblcabecalhoembarcada extends IndexableEntity{

    @Id
    @Column(name = "IdFormulario")
    private String idformulario;
    @Column(name = "Pesquisador")
    private String pesquisador;
    @Column(name = "IdMunicipio")
    private Integer idmunicipio;
    @Column(name = "TrechoRota")
    private String trechorota;
    @Column(name = "NomeCondutor")
    private String nomecondutor;
    @Column(name = "RG")
    private String rg;
    @Column(name = "CondutorReserva")
    private String condutorreserva;

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

    public void setTrechorota(String trechorota){
        this.trechorota = trechorota;
    }

    public String getTrechorota(){
        return trechorota;
    }

    public void setNomecondutor(String nomecondutor){
        this.nomecondutor = nomecondutor;
    }

    public String getNomecondutor(){
        return nomecondutor;
    }

    public void setRg(String rg){
        this.rg = rg;
    }

    public String getRg(){
        return rg;
    }

    public void setCondutorreserva(String condutorreserva){
        this.condutorreserva = condutorreserva;
    }

    public String getCondutorreserva(){
        return condutorreserva;
    }


}
