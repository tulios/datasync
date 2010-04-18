package com.datasync.models.barco.embarcacao;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;

import com.datasync.models.IndexableEntity;

@Entity
@Table(name = "tblSinalizacaoNoturna")
@SuppressWarnings("serial")
public class Tblsinalizacaonoturna extends IndexableEntity{

    @Column(name = "IdTipoSinalizacao")
    private Integer idtiposinalizacao;
    @Id
    @Column(name = "IdFormulario")
    private String idformulario;
    @Column(name = "QuaisOutras")
    private String quaisoutras;

    @Override
    public String getIdColumnName() {
        return "idformulario";
    }

    public String getIndexId() {
    	return getIdformulario()+"#"+getIdtiposinalizacao();
    }

    @Override
    public boolean isCompoundKey() {
    	return true;
    }

    @Override
    public String getCompoundIdColumnName() {
    	return "idtiposinalizacao";
    }

    public void setIdtiposinalizacao(Integer idtiposinalizacao){
        this.idtiposinalizacao = idtiposinalizacao;
    }

    public Integer getIdtiposinalizacao(){
        return idtiposinalizacao;
    }

    public void setIdformulario(String idformulario){
        this.idformulario = idformulario;
    }

    public String getIdformulario(){
        return idformulario;
    }

    public void setQuaisoutras(String quaisoutras){
        this.quaisoutras = quaisoutras;
    }

    public String getQuaisoutras(){
        return quaisoutras;
    }


}
