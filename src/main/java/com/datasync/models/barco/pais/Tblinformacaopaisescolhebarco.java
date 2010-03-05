package com.datasync.models.barco.pais;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;

import com.datasync.models.IndexableEntity;

@Entity
@Table(name = "tblInformacaoPaisEscolheBarco")
@SuppressWarnings("serial")
public class Tblinformacaopaisescolhebarco extends IndexableEntity{

    @Column(name = "IdTipoEscolheBarco")
    private Integer idtipoescolhebarco;
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
		return getIdformulario()+"#"+getIdtipoescolhebarco();
	}

	@Override
	public boolean isCompoundKey() {
		return true;
	}

	@Override
	public String getCompoundIdColumnName() {
		return "idtipoescolhebarco";
	}

    public void setIdtipoescolhebarco(Integer idtipoescolhebarco){
        this.idtipoescolhebarco = idtipoescolhebarco;
    }

    public Integer getIdtipoescolhebarco(){
        return idtipoescolhebarco;
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
