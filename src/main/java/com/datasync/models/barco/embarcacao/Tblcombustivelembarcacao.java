package com.datasync.models.barco.embarcacao;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;

import com.datasync.models.IndexableEntity;

@Entity
@Table(name = "tblCombustivelEmbarcacao")
@SuppressWarnings("serial")
public class Tblcombustivelembarcacao extends IndexableEntity{

    @Id
    @Column(name = "IdFormulario")
    private String idformulario;
    @Column(name = "IdTipoCombustivel")
    private Integer idtipocombustivel;
    @Column(name = "QuaisOutros")
    private String quaisoutros;

    @Override
    public String getIdColumnName() {
        return "idformulario";
    }

    @Override
    public String getIndexId() {
        return getIdformulario()+"#"+getIdtipocombustivel();
    }
    
    public boolean isCompoundKey() {
    	return true;
    }

    @Override
    public String getCompoundIdColumnName() {
    	return "idtipocombustivel";
    }

    public void setIdformulario(String idformulario){
        this.idformulario = idformulario;
    }

    public String getIdformulario(){
        return idformulario;
    }

    public void setIdtipocombustivel(Integer idtipocombustivel){
        this.idtipocombustivel = idtipocombustivel;
    }

    public Integer getIdtipocombustivel(){
        return idtipocombustivel;
    }

    public void setQuaisoutros(String quaisoutros){
        this.quaisoutros = quaisoutros;
    }

    public String getQuaisoutros(){
        return quaisoutros;
    }


}
