package com.datasync.models.barco.fad;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;

import com.datasync.models.IndexableEntity;

@Entity
@Table(name = "tblDadosEntrevista")
@SuppressWarnings("serial")
public class TblDadosEntrevista extends IndexableEntity{

    @Column(name = "IdTipoParada")
    private Integer idtipoparada;
    @Id
    @Column(name = "IdFormulario")
    private String idformulario;
    @Column(name = "CodigoInicialEntrevista")
    private String codigoinicialentrevista;
    @Column(name = "CodigoFinalEntrevista")
    private String codigofinalentrevista;
    @Column(name = "CodigoParadaEntrevista")
    private String codigoparadaentrevista;

    @Override
    public String getIdColumnName() {
        return "idformulario";
    }

    @Override
    public String getIndexId() {
        return getIdformulario()+"#"+getIdtipoparada();
    }
    
    public boolean isCompoundKey() {
    	return true;
    }

    @Override
    public String getCompoundIdColumnName() {
    	return "idtipoparada";
    }

    public void setIdtipoparada(Integer idtipoparada){
        this.idtipoparada = idtipoparada;
    }

    public Integer getIdtipoparada(){
        return idtipoparada;
    }

    public void setIdformulario(String idformulario){
        this.idformulario = idformulario;
    }

    public String getIdformulario(){
        return idformulario;
    }

    public void setCodigoinicialentrevista(String codigoinicialentrevista){
        this.codigoinicialentrevista = codigoinicialentrevista;
    }

    public String getCodigoinicialentrevista(){
        return codigoinicialentrevista;
    }

    public void setCodigofinalentrevista(String codigofinalentrevista){
        this.codigofinalentrevista = codigofinalentrevista;
    }

    public String getCodigofinalentrevista(){
        return codigofinalentrevista;
    }

    public void setCodigoparadaentrevista(String codigoparadaentrevista){
        this.codigoparadaentrevista = codigoparadaentrevista;
    }

    public String getCodigoparadaentrevista(){
        return codigoparadaentrevista;
    }


}
