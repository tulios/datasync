package com.datasync.models.bicicleta.alunoSemBike;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;

import com.datasync.models.IndexableEntity;

@Entity
@Table(name = "tblVaiEscola")
@SuppressWarnings("serial")
public class Tblvaiescola extends IndexableEntity{

    @Id
    @Column(name = "IdFormulario")
    private String idformulario;
    @Column(name = "IdTipoOutroTransporte")
    private Integer idtipooutrotransporte;
    @Column(name = "QualOutroVaiEscola")
    private String qualoutrovaiescola;

    @Override
    public boolean isCompoundKey() {
    	return true;
    }
    
    @Override
    public String getCompoundIdColumnName() {
    	return "IdTipoOutroTransporte";
    }
    
    @Override
    public String getIdColumnName() {
        return "idformulario";
    }

    @Override
    public String getIndexId() {
        return getIdformulario() + "#" + getIdtipooutrotransporte();
    }

    public void setIdformulario(String idformulario){
        this.idformulario = idformulario;
    }

    public String getIdformulario(){
        return idformulario;
    }

    public void setIdtipooutrotransporte(Integer idtipooutrotransporte){
        this.idtipooutrotransporte = idtipooutrotransporte;
    }

    public Integer getIdtipooutrotransporte(){
        return idtipooutrotransporte;
    }

    public void setQualoutrovaiescola(String qualoutrovaiescola){
        this.qualoutrovaiescola = qualoutrovaiescola;
    }

    public String getQualoutrovaiescola(){
        return qualoutrovaiescola;
    }


}
