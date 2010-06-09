package com.datasync.models.bicicleta.aluno;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;

import com.datasync.models.IndexableEntity;

@Entity
@Table(name = "tblConsertaBicicleta")
@SuppressWarnings("serial")
public class Tblconsertabicicleta extends IndexableEntity{

    @Id
    @Column(name = "IdFormulario")
    private String idformulario;
    @Column(name = "IdTipoConsertaBicicleta")
    private Integer idtipoconsertabicicleta;
    @Column(name = "QualOutroConsertaBicicleta")
    private String qualoutroconsertabicicleta;

    @Override
    public boolean isCompoundKey() {
    	return true;
    }
    
    @Override
    public String getCompoundIdColumnName() {
    	return "IdTipoConsertaBicicleta";
    }
    
    @Override
    public String getIdColumnName() {
        return "idformulario";
    }

    @Override
    public String getIndexId() {
        return getIdformulario() + "#" + getIdtipoconsertabicicleta();
    }

    public void setIdformulario(String idformulario){
        this.idformulario = idformulario;
    }

    public String getIdformulario(){
        return idformulario;
    }

    public void setIdtipoconsertabicicleta(Integer idtipoconsertabicicleta){
        this.idtipoconsertabicicleta = idtipoconsertabicicleta;
    }

    public Integer getIdtipoconsertabicicleta(){
        return idtipoconsertabicicleta;
    }

    public void setQualoutroconsertabicicleta(String qualoutroconsertabicicleta){
        this.qualoutroconsertabicicleta = qualoutroconsertabicicleta;
    }

    public String getQualoutroconsertabicicleta(){
        return qualoutroconsertabicicleta;
    }


}
