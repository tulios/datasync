package com.datasync.models.barco.fad;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;

import com.datasync.models.IndexableEntity;

@Entity
@Table(name = "tblEscola")
@SuppressWarnings("serial")
public class TblEscola extends IndexableEntity{

	@Id
    @Column(name = "IdINEP")
    private Integer idinep;
    @Column(name = "NomeEscola")
    private String nomeescola;
    @Column(name = "IdMunicipio")
    private Integer idmunicipio;

    @Override
    public String getIdColumnName() {
        return "idINEP";
    }

    @Override
    public String getIndexId() {
        return getIdinep()+"#"+getIdmunicipio();
    }
    
    public boolean isCompoundKey() {
    	return true;
    }

    @Override
    public String getCompoundIdColumnName() {
    	return "idmunicipio";
    }


    public void setIdinep(Integer idinep){
        this.idinep = idinep;
    }

    public Integer getIdinep(){
        return idinep;
    }

    public void setNomeescola(String nomeescola){
        this.nomeescola = nomeescola;
    }

    public String getNomeescola(){
        return nomeescola;
    }

    public void setIdmunicipio(Integer idmunicipio){
        this.idmunicipio = idmunicipio;
    }

    public Integer getIdmunicipio(){
        return idmunicipio;
    }


}
