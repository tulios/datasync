package com.datasync.models.bicicleta.professor;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;

import com.datasync.models.IndexableEntity;

@Entity
@Table(name = "tblProfessorGuardaBicicleta")
@SuppressWarnings("serial")
public class Tblprofessorguardabicicleta extends IndexableEntity{

    @Id
    @Column(name = "IdFormulario")
    private String idformulario;
    @Column(name = "IdTipoOndeGuardaBicicleta")
    private Integer idtipoondeguardabicicleta;
    @Column(name = "QuaisOutros")
    private String quaisoutros;

    @Override
    public boolean isCompoundKey() {
    	return true;
    }
    
    @Override
    public String getIdColumnName() {
        return "idformulario";
    }

    @Override
    public String getIndexId() {
        return getIdformulario() +  "#" + getIdtipoondeguardabicicleta();
    }

    public void setIdformulario(String idformulario){
        this.idformulario = idformulario;
    }

    public String getIdformulario(){
        return idformulario;
    }

    public void setIdtipoondeguardabicicleta(Integer idtipoondeguardabicicleta){
        this.idtipoondeguardabicicleta = idtipoondeguardabicicleta;
    }

    public Integer getIdtipoondeguardabicicleta(){
        return idtipoondeguardabicicleta;
    }

    public void setQuaisoutros(String quaisoutros){
        this.quaisoutros = quaisoutros;
    }

    public String getQuaisoutros(){
        return quaisoutros;
    }


}
