package com.datasync.models.barco.secretario;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;

import com.datasync.models.IndexableEntity;

@Entity
@Table(name = "tblPercepcaoSecretarioMotivoBarqueiroTerceirizado")
@SuppressWarnings("serial")
public class Tblpercepcaosecretariomotivobarqueiroterceirizado extends IndexableEntity{

    @Column(name = "IdTipoMotivoBarqueiroTerceirizado")
    private Integer idtipomotivobarqueiroterceirizado;
    @Id
    @Column(name = "IdFormulario")
    private String idformulario;
    @Column(name = "QuaisOutros")
    private String quaisoutros;

    @Override
    public String getIdColumnName() {
        return "idformulario";
    }

    @Override
	public String getIndexId() {
		return getIdformulario()+"#"+getIdtipomotivobarqueiroterceirizado();
	}

	@Override
	public boolean isCompoundKey() {
		return true;
	}

	@Override
	public String getCompoundIdColumnName() {
		return "idtipomotivobarqueiroterceirizado";
	}

    public void setIdtipomotivobarqueiroterceirizado(Integer idtipomotivobarqueiroterceirizado){
        this.idtipomotivobarqueiroterceirizado = idtipomotivobarqueiroterceirizado;
    }

    public Integer getIdtipomotivobarqueiroterceirizado(){
        return idtipomotivobarqueiroterceirizado;
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
