package com.datasync.models.barco.municipio;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;

import com.datasync.models.IndexableEntity;

import java.sql.Timestamp;

@Entity
@Table(name = "tblCabecalhoMunicipio")
@SuppressWarnings("serial")
public class Tblcabecalhomunicipio extends IndexableEntity{

    @Id
    @Column(name = "IdFormulario")
    private String idformulario;
    @Column(name = "Pesquisador")
    private String pesquisador;
    @Column(name = "Data")
    private Timestamp data;
    @Column(name = "IdMunicipio")
    private Integer idmunicipio;
    @Column(name = "HoraInicial")
    private String horainicial;
    @Column(name = "HoraFinal")
    private String horafinal;
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

    public void setData(Timestamp data){
        this.data = data;
    }

    public Timestamp getData(){
        return data;
    }

    public void setIdmunicipio(Integer idmunicipio){
        this.idmunicipio = idmunicipio;
    }

    public Integer getIdmunicipio(){
        return idmunicipio;
    }

    public void setHorainicial(String horainicial){
        this.horainicial = horainicial;
    }

    public String getHorainicial(){
        return horainicial;
    }

    public void setHorafinal(String horafinal){
        this.horafinal = horafinal;
    }

    public String getHorafinal(){
        return horafinal;
    }

    public void setObservacao(String observacao){
        this.observacao = observacao;
    }

    public String getObservacao(){
        return observacao;
    }


}
