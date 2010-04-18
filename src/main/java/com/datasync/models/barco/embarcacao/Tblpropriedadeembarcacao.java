package com.datasync.models.barco.embarcacao;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;

import com.datasync.models.IndexableEntity;

@Entity
@Table(name = "tblPropriedadeEmbarcacao")
@SuppressWarnings("serial")
public class Tblpropriedadeembarcacao extends IndexableEntity{

    @Id
    @Column(name = "IdFormulario")
    private String idformulario;
    @Column(name = "IdTipoPropriedade")
    private Integer idtipopropriedade;
    @Column(name = "QuaisOutros")
    private String quaisoutros;

    @Override
    public String getIdColumnName() {
        return "idformulario";
    }

    public String getIndexId() {
    	return getIdformulario()+"#"+getIdtipopropriedade();
    }

    @Override
    public boolean isCompoundKey() {
    	return true;
    }

    @Override
    public String getCompoundIdColumnName() {
    	return "idtipopropriedade";
    }

    public void setIdformulario(String idformulario){
        this.idformulario = idformulario;
    }

    public String getIdformulario(){
        return idformulario;
    }

    public void setIdtipopropriedade(Integer idtipopropriedade){
        this.idtipopropriedade = idtipopropriedade;
    }

    public Integer getIdtipopropriedade(){
        return idtipopropriedade;
    }

    public void setQuaisoutros(String quaisoutros){
        this.quaisoutros = quaisoutros;
    }

    public String getQuaisoutros(){
        return quaisoutros;
    }


}
