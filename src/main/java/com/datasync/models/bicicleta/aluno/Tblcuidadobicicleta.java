package com.datasync.models.bicicleta.aluno;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;

import com.datasync.models.IndexableEntity;

@Entity
@Table(name = "tblCuidadoBicicleta")
@SuppressWarnings("serial")
public class Tblcuidadobicicleta extends IndexableEntity{

    @Id
    @Column(name = "IdFormulario")
    private String idformulario;
    @Column(name = "IdTipoCuidadoBicicleta")
    private Integer idtipocuidadobicicleta;
    @Column(name = "QualOutroCuidadoBicicleta")
    private String qualoutrocuidadobicicleta;

    @Override
    public boolean isCompoundKey() {
    	return true;
    }
    
    @Override
    public String getCompoundIdColumnName() {
    	return "IdTipoCuidadoBicicleta";
    }
    
    @Override
    public String getIdColumnName() {
        return "idformulario";
    }

    @Override
    public String getIndexId() {
        return getIdformulario() + "#" + getIdtipocuidadobicicleta();
    }

    public void setIdformulario(String idformulario){
        this.idformulario = idformulario;
    }

    public String getIdformulario(){
        return idformulario;
    }

    public void setIdtipocuidadobicicleta(Integer idtipocuidadobicicleta){
        this.idtipocuidadobicicleta = idtipocuidadobicicleta;
    }

    public Integer getIdtipocuidadobicicleta(){
        return idtipocuidadobicicleta;
    }

    public void setQualoutrocuidadobicicleta(String qualoutrocuidadobicicleta){
        this.qualoutrocuidadobicicleta = qualoutrocuidadobicicleta;
    }

    public String getQualoutrocuidadobicicleta(){
        return qualoutrocuidadobicicleta;
    }


}
