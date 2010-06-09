package com.datasync.models.bicicleta.aluno;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;

import com.datasync.models.IndexableEntity;

@Entity
@Table(name = "tblObstaculoTransito")
@SuppressWarnings("serial")
public class Tblobstaculotransito extends IndexableEntity{

    @Id
    @Column(name = "IdFormulario")
    private String idformulario;
    @Column(name = "IdTipoObstaculoTransito")
    private Integer idtipoobstaculotransito;
    @Column(name = "QualOutroObstaculoTransito")
    private String qualoutroobstaculotransito;

    @Override
    public boolean isCompoundKey() {
    	return true;
    }
    
    @Override
    public String getCompoundIdColumnName() {
    	return "IdTipoObstaculoTransito";
    }
    
    @Override
    public String getIdColumnName() {
        return "idformulario";
    }

    @Override
    public String getIndexId() {
        return getIdformulario() + "#" + getIdtipoobstaculotransito();
    }

    public void setIdformulario(String idformulario){
        this.idformulario = idformulario;
    }

    public String getIdformulario(){
        return idformulario;
    }

    public void setIdtipoobstaculotransito(Integer idtipoobstaculotransito){
        this.idtipoobstaculotransito = idtipoobstaculotransito;
    }

    public Integer getIdtipoobstaculotransito(){
        return idtipoobstaculotransito;
    }

    public void setQualoutroobstaculotransito(String qualoutroobstaculotransito){
        this.qualoutroobstaculotransito = qualoutroobstaculotransito;
    }

    public String getQualoutroobstaculotransito(){
        return qualoutroobstaculotransito;
    }


}
