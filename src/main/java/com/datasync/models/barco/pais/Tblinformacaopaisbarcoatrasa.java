package com.datasync.models.barco.pais;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;

import com.datasync.models.IndexableEntity;

@Entity
@Table(name = "tblInformacaoPaisBarcoAtrasa")
@SuppressWarnings("serial")
public class Tblinformacaopaisbarcoatrasa extends IndexableEntity{

    @Id
    @Column(name = "IdFormulario")
    private String idformulario;
    @Column(name = "IdTipoProvidenciaPai")
    private Integer idtipoprovidenciapai;
    @Column(name = "QuemOutro")
    private String quemoutro;

    @Override
    public String getIdColumnName() {
        return "idformulario";
    }

    @Override
	public String getIndexId() {
		return getIdformulario()+"#"+getIdtipoprovidenciapai();
	}

	@Override
	public boolean isCompoundKey() {
		return true;
	}

	@Override
	public String getCompoundIdColumnName() {
		return "idtipoprovidenciapai";
	}

    public void setIdformulario(String idformulario){
        this.idformulario = idformulario;
    }

    public String getIdformulario(){
        return idformulario;
    }

    public void setIdtipoprovidenciapai(Integer idtipoprovidenciapai){
        this.idtipoprovidenciapai = idtipoprovidenciapai;
    }

    public Integer getIdtipoprovidenciapai(){
        return idtipoprovidenciapai;
    }

    public void setQuemoutro(String quemoutro){
        this.quemoutro = quemoutro;
    }

    public String getQuemoutro(){
        return quemoutro;
    }


}
