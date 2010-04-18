package com.datasync.models.barco.embarcacao;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;

import com.datasync.models.IndexableEntity;

@Entity
@Table(name = "tblMaterialCasco")
@SuppressWarnings("serial")
public class Tblmaterialcasco extends IndexableEntity{

    @Column(name = "IdTipoCasco")
    private Integer idtipocasco;
    @Id
    @Column(name = "IdFormulario")
    private String idformulario;
    @Column(name = "QuaisOutros")
    private String quaisoutros;

    @Override
    public String getIdColumnName() {
        return "idformulario";
    }

    public String getIndexId() {
    	return getIdformulario()+"#"+getIdtipocasco();
    }

    @Override
    public boolean isCompoundKey() {
    	return true;
    }

    @Override
    public String getCompoundIdColumnName() {
    	return "idtipocasco";
    }

    public void setIdtipocasco(Integer idtipocasco){
        this.idtipocasco = idtipocasco;
    }

    public Integer getIdtipocasco(){
        return idtipocasco;
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
