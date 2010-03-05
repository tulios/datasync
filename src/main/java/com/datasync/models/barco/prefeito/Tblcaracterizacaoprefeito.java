package com.datasync.models.barco.prefeito;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;

import com.datasync.models.IndexableEntity;

@Entity
@Table(name = "tblCaracterizacaoPrefeito")
@SuppressWarnings("serial")
public class Tblcaracterizacaoprefeito extends IndexableEntity{

    @Id
    @Column(name = "IdFormulario")
    private String idformulario;
    @Column(name = "TempoMandatoAno")
    private Integer tempomandatoano;
    @Column(name = "TempoMandatoMeses")
    private Integer tempomandatomeses;
    @Column(name = "QuantidadeMandato")
    private Integer quantidademandato;

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

    public void setTempomandatoano(Integer tempomandatoano){
        this.tempomandatoano = tempomandatoano;
    }

    public Integer getTempomandatoano(){
        return tempomandatoano;
    }

    public void setTempomandatomeses(Integer tempomandatomeses){
        this.tempomandatomeses = tempomandatomeses;
    }

    public Integer getTempomandatomeses(){
        return tempomandatomeses;
    }

    public void setQuantidademandato(Integer quantidademandato){
        this.quantidademandato = quantidademandato;
    }

    public Integer getQuantidademandato(){
        return quantidademandato;
    }


}
