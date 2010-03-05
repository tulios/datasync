package com.datasync.models.barco.pais;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;

import com.datasync.models.IndexableEntity;

@Entity
@Table(name = "tblInformacaoPaisTransportaOutro")
@SuppressWarnings("serial")
public class Tblinformacaopaistransportaoutro extends IndexableEntity{

    @Id
    @Column(name = "IdFormulario")
    private String idformulario;
    @Column(name = "IdTipoOutroAcompanhante")
    private Integer idtipooutroacompanhante;
    @Column(name = "QuemOutro")
    private String quemoutro;

    @Override
    public String getIdColumnName() {
        return "idformulario";
    }

    @Override
	public String getIndexId() {
		return getIdformulario()+"#"+getIdtipooutroacompanhante();
	}

	@Override
	public boolean isCompoundKey() {
		return true;
	}

	@Override
	public String getCompoundIdColumnName() {
		return "idtipooutroacompanhante";
	}

    public void setIdformulario(String idformulario){
        this.idformulario = idformulario;
    }

    public String getIdformulario(){
        return idformulario;
    }

    public void setIdtipooutroacompanhante(Integer idtipooutroacompanhante){
        this.idtipooutroacompanhante = idtipooutroacompanhante;
    }

    public Integer getIdtipooutroacompanhante(){
        return idtipooutroacompanhante;
    }

    public void setQuemoutro(String quemoutro){
        this.quemoutro = quemoutro;
    }

    public String getQuemoutro(){
        return quemoutro;
    }


}
