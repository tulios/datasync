package com.datasync.models.barco.embarcacao;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;

import com.datasync.models.IndexableEntity;

@Entity
@Table(name = "tblConservacaoEmbarcacao")
@SuppressWarnings("serial")
public class Tblconservacaoembarcacao extends IndexableEntity{

    @Id
    @Column(name = "IdFormulario")
    private String idformulario;
    @Column(name = "EstadoCasco")
    private Integer estadocasco;
    @Column(name = "EstadoPiso")
    private Integer estadopiso;
    @Column(name = "EstadoTeto")
    private Integer estadoteto;
    @Column(name = "EstadoAssento")
    private Integer estadoassento;
    @Column(name = "EstadoColete")
    private Integer estadocolete;
    @Column(name = "EstadoBoias")
    private Integer estadoboias;
    @Column(name = "EstadoBalsa")
    private Integer estadobalsa;

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

    public void setEstadocasco(Integer estadocasco){
        this.estadocasco = estadocasco;
    }

    public Integer getEstadocasco(){
        return estadocasco;
    }

    public void setEstadopiso(Integer estadopiso){
        this.estadopiso = estadopiso;
    }

    public Integer getEstadopiso(){
        return estadopiso;
    }

    public void setEstadoteto(Integer estadoteto){
        this.estadoteto = estadoteto;
    }

    public Integer getEstadoteto(){
        return estadoteto;
    }

    public void setEstadoassento(Integer estadoassento){
        this.estadoassento = estadoassento;
    }

    public Integer getEstadoassento(){
        return estadoassento;
    }

    public void setEstadocolete(Integer estadocolete){
        this.estadocolete = estadocolete;
    }

    public Integer getEstadocolete(){
        return estadocolete;
    }

    public void setEstadoboias(Integer estadoboias){
        this.estadoboias = estadoboias;
    }

    public Integer getEstadoboias(){
        return estadoboias;
    }

    public void setEstadobalsa(Integer estadobalsa){
        this.estadobalsa = estadobalsa;
    }

    public Integer getEstadobalsa(){
        return estadobalsa;
    }


}
