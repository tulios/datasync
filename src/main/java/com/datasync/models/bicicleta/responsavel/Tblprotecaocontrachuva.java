package com.datasync.models.bicicleta.responsavel;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;

import com.datasync.models.IndexableEntity;

@Entity
@Table(name = "tblProtecaoContraChuva")
@SuppressWarnings("serial")
public class Tblprotecaocontrachuva extends IndexableEntity{

    @Id
    @Column(name = "IdFormulario")
    private String idformulario;
    @Column(name = "IdTipoProtecaoChuva")
    private Integer idtipoprotecaochuva;
    @Column(name = "QuaisOutras")
    private String quaisoutras;

    @Override
    public boolean isCompoundKey() {
    	return true;
    }
    
    @Override
    public String getCompoundIdColumnName() {
    	return "IdTipoProtecaoChuva";
    }
    
    @Override
    public String getIdColumnName() {
        return "idformulario";
    }

    @Override
    public String getIndexId() {
        return getIdformulario() + "#" + getIdtipoprotecaochuva();
    }

    public void setIdformulario(String idformulario){
        this.idformulario = idformulario;
    }

    public String getIdformulario(){
        return idformulario;
    }

    public void setIdtipoprotecaochuva(Integer idtipoprotecaochuva){
        this.idtipoprotecaochuva = idtipoprotecaochuva;
    }

    public Integer getIdtipoprotecaochuva(){
        return idtipoprotecaochuva;
    }

    public void setQuaisoutras(String quaisoutras){
        this.quaisoutras = quaisoutras;
    }

    public String getQuaisoutras(){
        return quaisoutras;
    }


}
