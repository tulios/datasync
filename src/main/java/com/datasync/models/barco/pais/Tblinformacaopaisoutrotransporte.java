package com.datasync.models.barco.pais;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;

import com.datasync.models.IndexableEntity;

@Entity
@Table(name = "tblInformacaoPaisOutroTransporte")
@SuppressWarnings("serial")
public class Tblinformacaopaisoutrotransporte extends IndexableEntity{

    @Column(name = "IdTipoOutroTransporte")
    private Integer idtipooutrotransporte;
    @Id
    @Column(name = "IdFormulario")
    private String idformulario;
    @Column(name = "QuemOutro")
    private String quemoutro;

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

    public void setQuemoutro(String quemoutro){
        this.quemoutro = quemoutro;
    }

    public String getQuemoutro(){
        return quemoutro;
    }


}
