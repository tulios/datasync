package com.datasync.models.bicicleta.aluno;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;

import com.datasync.models.IndexableEntity;

@Entity
@Table(name = "tblMelhoria")
@SuppressWarnings("serial")
public class Tblmelhoria extends IndexableEntity{

    @Id
    @Column(name = "IdFormulario")
    private String idformulario;
    @Column(name = "IdTipoDefeitoBicicleta")
    private Integer idtipodefeitobicicleta;
    @Column(name = "QualOutroMelhoria")
    private String qualoutromelhoria;

    @Override
    public boolean isCompoundKey() {
    	return true;
    }
    
    @Override
    public String getCompoundIdColumnName() {
    	return "IdTipoDefeitoBicicleta";
    }
    
    @Override
    public String getIdColumnName() {
        return "idformulario";
    }

    @Override
    public String getIndexId() {
        return getIdformulario() + "#" + getIdtipodefeitobicicleta();
    }

    public void setIdformulario(String idformulario){
        this.idformulario = idformulario;
    }

    public String getIdformulario(){
        return idformulario;
    }

    public void setIdtipodefeitobicicleta(Integer idtipodefeitobicicleta){
        this.idtipodefeitobicicleta = idtipodefeitobicicleta;
    }

    public Integer getIdtipodefeitobicicleta(){
        return idtipodefeitobicicleta;
    }

    public void setQualoutromelhoria(String qualoutromelhoria){
        this.qualoutromelhoria = qualoutromelhoria;
    }

    public String getQualoutromelhoria(){
        return qualoutromelhoria;
    }


}
