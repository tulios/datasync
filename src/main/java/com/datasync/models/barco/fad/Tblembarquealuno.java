package com.datasync.models.barco.fad;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;

import com.datasync.models.IndexableEntity;

@Entity
@Table(name = "tblEmbarqueAluno")
@SuppressWarnings("serial")
public class Tblembarquealuno extends IndexableEntity{

    @Column(name = "IdTipoEmbarque")
    private Integer idtipoembarque;
    @Id
    @Column(name = "IdFormulario")
    private String idformulario;
    @Column(name = "QuaisOutros")
    private String quaisoutros;

    @Override
    public String getIdColumnName() {
        return "idformulario";
    }

    @Override
    public String getIndexId() {
        return getIdformulario()+"#"+getIdtipoembarque();
    }
    
    public boolean isCompoundKey() {
    	return true;
    }

    @Override
    public String getCompoundIdColumnName() {
    	return "idtipoembarque";
    }

    public void setIdtipoembarque(Integer idtipoembarque){
        this.idtipoembarque = idtipoembarque;
    }

    public Integer getIdtipoembarque(){
        return idtipoembarque;
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
