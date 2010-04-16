package com.datasync.models.barco.embarcacao;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;

import com.datasync.models.IndexableEntity;

import java.sql.Timestamp;

@Entity
@Table(name = "tblCabecalhoEmbarcacao")
@SuppressWarnings("serial")
public class Tblcabecalhoembarcacao extends IndexableEntity{

    @Id
    @Column(name = "IdFormulario")
    private String idformulario;
    @Column(name = "Pesquisador")
    private String pesquisador;
    @Column(name = "Data")
    private Timestamp data;
    @Column(name = "IdMunicipio")
    private Integer idmunicipio;
    @Column(name = "IdRota")
    private Integer idrota;
    @Column(name = "Rota")
    private String rota;
    @Column(name = "HoraInicial")
    private String horainicial;
    @Column(name = "HoraFinal")
    private String horafinal;

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

    public void setIdrota(Integer idrota){
        this.idrota = idrota;
    }

    public Integer getIdrota(){
        return idrota;
    }

    public void setRota(String rota){
        this.rota = rota;
    }

    public String getRota(){
        return rota;
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


}
