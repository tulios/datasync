package com.datasync.models.bicicleta.aluno;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;

import com.datasync.models.IndexableEntity;

@Entity
@Table(name = "tblAcidenteEscola")
@SuppressWarnings("serial")
public class Tblacidenteescola extends IndexableEntity{

    @Id
    @Column(name = "IdFormulario")
    private String idformulario;
    @Column(name = "IdTipoAcidenteEscola")
    private Integer idtipoacidenteescola;
    @Column(name = "SofreuAcidenteEscola")
    private String sofreuacidenteescola;
    @Column(name = "QualOutroAcidenteEscola")
    private String qualoutroacidenteescola;

    @Override
    public boolean isCompoundKey() {
    	return true;
    }
    
    @Override
    public String getCompoundIdColumnName() {
    	return "IdTipoAcidenteEscola";
    }
    
    @Override
    public String getIdColumnName() {
        return "idformulario";
    }

    @Override
    public String getIndexId() {
        return getIdformulario() + "#" + getIdtipoacidenteescola();
    }

    public void setIdformulario(String idformulario){
        this.idformulario = idformulario;
    }

    public String getIdformulario(){
        return idformulario;
    }

    public void setIdtipoacidenteescola(Integer idtipoacidenteescola){
        this.idtipoacidenteescola = idtipoacidenteescola;
    }

    public Integer getIdtipoacidenteescola(){
        return idtipoacidenteescola;
    }

    public void setSofreuacidenteescola(String sofreuacidenteescola){
        this.sofreuacidenteescola = sofreuacidenteescola;
    }

    public String getSofreuacidenteescola(){
        return sofreuacidenteescola;
    }

    public void setQualoutroacidenteescola(String qualoutroacidenteescola){
        this.qualoutroacidenteescola = qualoutroacidenteescola;
    }

    public String getQualoutroacidenteescola(){
        return qualoutroacidenteescola;
    }


}
