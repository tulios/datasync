package com.datasync.models.barco.fad;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;

import com.datasync.models.IndexableEntity;

@Entity
@Table(name = "tblDadosParadaQuantidade")
@SuppressWarnings("serial")
public class TblDadosParadaQuantidade extends IndexableEntity{

    @Id
    @Column(name = "IdFormulario")
    private String idformulario;
    @Column(name = "QuantidadeTotalEmbarque")
    private Integer quantidadetotalembarque;
    @Column(name = "QuantidadeTotalDesembarque")
    private Integer quantidadetotaldesembarque;
    @Column(name = "QuantidadeDeficiente")
    private Integer quantidadedeficiente;
    @Column(name = "QuantidadeCarona")
    private Integer quantidadecarona;

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

    public void setQuantidadetotalembarque(Integer quantidadetotalembarque){
        this.quantidadetotalembarque = quantidadetotalembarque;
    }

    public Integer getQuantidadetotalembarque(){
        return quantidadetotalembarque;
    }

    public void setQuantidadetotaldesembarque(Integer quantidadetotaldesembarque){
        this.quantidadetotaldesembarque = quantidadetotaldesembarque;
    }

    public Integer getQuantidadetotaldesembarque(){
        return quantidadetotaldesembarque;
    }

    public void setQuantidadedeficiente(Integer quantidadedeficiente){
        this.quantidadedeficiente = quantidadedeficiente;
    }

    public Integer getQuantidadedeficiente(){
        return quantidadedeficiente;
    }

    public void setQuantidadecarona(Integer quantidadecarona){
        this.quantidadecarona = quantidadecarona;
    }

    public Integer getQuantidadecarona(){
        return quantidadecarona;
    }


}
