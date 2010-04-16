package com.datasync.models.barco.embarcacao;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;

import com.datasync.models.IndexableEntity;

@Entity
@Table(name = "tblMaterialAssento")
@SuppressWarnings("serial")
public class Tblmaterialassento extends IndexableEntity{

    @Column(name = "IdTipoAssento")
    private Integer idtipoassento;
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
    	return getIdformulario()+"#"+getIdtipoassento();
    }

    @Override
    public boolean isCompoundKey() {
    	return true;
    }

    @Override
    public String getCompoundIdColumnName() {
    	return "idtipoassento";
    }

    public void setIdtipoassento(Integer idtipoassento){
        this.idtipoassento = idtipoassento;
    }

    public Integer getIdtipoassento(){
        return idtipoassento;
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
