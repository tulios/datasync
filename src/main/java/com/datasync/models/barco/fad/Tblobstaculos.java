package com.datasync.models.barco.fad;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;

import com.datasync.models.IndexableEntity;

@Entity
@Table(name = "tblObstaculos")
@SuppressWarnings("serial")
public class Tblobstaculos extends IndexableEntity{

    @Column(name = "IdTipoObstaculos")
    private Integer idtipoobstaculos;
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
        return getIdformulario()+"#"+getIdtipoobstaculos();
    }
    
    public boolean isCompoundKey() {
    	return true;
    }

    @Override
    public String getCompoundIdColumnName() {
    	return "idtipoobstaculos";
    }

    public void setIdtipoobstaculos(Integer idtipoobstaculos){
        this.idtipoobstaculos = idtipoobstaculos;
    }

    public Integer getIdtipoobstaculos(){
        return idtipoobstaculos;
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
