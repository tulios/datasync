package com.datasync.models.bicicleta.aluno;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;

import com.datasync.models.IndexableEntity;

@Entity
@Table(name = "tblAcompanhanteEscola")
@SuppressWarnings("serial")
public class Tblacompanhanteescola extends IndexableEntity{

    @Id
    @Column(name = "IdFormulario")
    private String idformulario;
    @Column(name = "IdTipoAcompanhanteEscola")
    private Integer idtipoacompanhanteescola;
    @Column(name = "AcompanhanteEscola")
    private Integer acompanhanteescola;
    @Column(name = "QualOutroAcompanhanteEscola")
    private String qualoutroacompanhanteescola;

    @Override
    public boolean isCompoundKey() {
    	return true;
    }
    
    @Override
    public String getCompoundIdColumnName() {
    	return "IdTipoAcompanhanteEscola";
    }
    
    @Override
    public String getIdColumnName() {
        return "idformulario";
    }

    @Override
    public String getIndexId() {
        return getIdformulario() + "#" + getIdtipoacompanhanteescola();
    }

    public void setIdformulario(String idformulario){
        this.idformulario = idformulario;
    }

    public String getIdformulario(){
        return idformulario;
    }

    public void setIdtipoacompanhanteescola(Integer idtipoacompanhanteescola){
        this.idtipoacompanhanteescola = idtipoacompanhanteescola;
    }

    public Integer getIdtipoacompanhanteescola(){
        return idtipoacompanhanteescola;
    }

    public void setAcompanhanteescola(Integer acompanhanteescola){
        this.acompanhanteescola = acompanhanteescola;
    }

    public Integer getAcompanhanteescola(){
        return acompanhanteescola;
    }

    public void setQualoutroacompanhanteescola(String qualoutroacompanhanteescola){
        this.qualoutroacompanhanteescola = qualoutroacompanhanteescola;
    }

    public String getQualoutroacompanhanteescola(){
        return qualoutroacompanhanteescola;
    }


}
