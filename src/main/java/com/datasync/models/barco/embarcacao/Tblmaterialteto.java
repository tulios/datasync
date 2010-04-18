package com.datasync.models.barco.embarcacao;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;

import com.datasync.models.IndexableEntity;

@Entity
@Table(name = "tblMaterialTeto")
@SuppressWarnings("serial")
public class Tblmaterialteto extends IndexableEntity{

    @Column(name = "IdTipoTeto")
    private Integer idtipoteto;
    @Id
    @Column(name = "IdFormulario")
    private String idformulario;
    @Column(name = "QuaisOutros")
    private String quaisoutros;

    @Override
    public String getIdColumnName() {
        return "idformulario";
    }

    public String getIndexId() {
    	return getIdformulario()+"#"+getIdtipoteto();
    }

    @Override
    public boolean isCompoundKey() {
    	return true;
    }

    @Override
    public String getCompoundIdColumnName() {
    	return "idtipoteto";
    }

    public void setIdtipoteto(Integer idtipoteto){
        this.idtipoteto = idtipoteto;
    }

    public Integer getIdtipoteto(){
        return idtipoteto;
    }

    public void setIdformulario(String idformulario){
        this.idformulario = idformulario;
    }

    public String getIdformulario(){
        return idformulario;
    }

    public void setQuaisoutros(String quaisoutros){
        this.quaisoutros = quaisoutros;
    }

    public String getQuaisoutros(){
        return quaisoutros;
    }


}
