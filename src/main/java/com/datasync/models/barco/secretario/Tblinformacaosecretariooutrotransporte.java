package com.datasync.models.barco.secretario;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;

import com.datasync.models.IndexableEntity;

@Entity
@Table(name = "tblInformacaoSecretarioOutroTransporte")
@SuppressWarnings("serial")
public class Tblinformacaosecretariooutrotransporte extends IndexableEntity{

    @Column(name = "IdTipoOutroTransporte")
    private Integer idtipooutrotransporte;
    @Id
    @Column(name = "IdFormulario")
    private String idformulario;
    @Column(name = "OutrosQuais")
    private String outrosquais;

    @Override
    public String getIdColumnName() {
        return "idformulario";
    }

    @Override
	public String getIndexId() {
		return getIdformulario()+"#"+getIdtipooutrotransporte();
	}

	@Override
	public boolean isCompoundKey() {
		return true;
	}

	@Override
	public String getCompoundIdColumnName() {
		return "idtipooutrotransporte";
	}

    public void setIdtipooutrotransporte(Integer idtipooutrotransporte){
        this.idtipooutrotransporte = idtipooutrotransporte;
    }

    public Integer getIdtipooutrotransporte(){
        return idtipooutrotransporte;
    }

    public void setIdformulario(String idformulario){
        this.idformulario = idformulario;
    }

    public String getIdformulario(){
        return idformulario;
    }

    public void setOutrosquais(String outrosquais){
        this.outrosquais = outrosquais;
    }

    public String getOutrosquais(){
        return outrosquais;
    }


}
