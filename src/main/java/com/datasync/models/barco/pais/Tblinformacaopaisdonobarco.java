package com.datasync.models.barco.pais;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;

import com.datasync.models.IndexableEntity;

@Entity
@Table(name = "tblInformacaoPaisDonoBarco")
@SuppressWarnings("serial")
public class Tblinformacaopaisdonobarco extends IndexableEntity{

    @Column(name = "IdTipoDonoBarco")
    private Integer idtipodonobarco;
    @Id
    @Column(name = "IdFormulario")
    private String idformulario;
    @Column(name = "Quem")
    private String quem;

    @Override
    public String getIdColumnName() {
        return "idformulario";
    }

    @Override
	public String getIndexId() {
		return getIdformulario()+"#"+getIdtipodonobarco();
	}

	@Override
	public boolean isCompoundKey() {
		return true;
	}

	@Override
	public String getCompoundIdColumnName() {
		return "idtipodonobarco";
	}

    public void setIdtipodonobarco(Integer idtipodonobarco){
        this.idtipodonobarco = idtipodonobarco;
    }

    public Integer getIdtipodonobarco(){
        return idtipodonobarco;
    }

    public void setIdformulario(String idformulario){
        this.idformulario = idformulario;
    }

    public String getIdformulario(){
        return idformulario;
    }

    public void setQuem(String quem){
        this.quem = quem;
    }

    public String getQuem(){
        return quem;
    }


}
