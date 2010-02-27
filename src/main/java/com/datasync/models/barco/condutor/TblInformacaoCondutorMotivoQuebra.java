package com.datasync.models.barco.condutor;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;

import com.datasync.models.IndexableEntity;

@Entity
@Table(name = "TblInformacaoCondutorMotivoQuebra")
@SuppressWarnings("serial")
public class TblInformacaoCondutorMotivoQuebra extends IndexableEntity {

	@Id
	@Column(name = "IdFormulario")
	private String idFormulario;
	@Column(name = "IdTipoMotivo")
	private int idTipoMotivo;
	@Column(name = "QuaisOutros")
	private String quaisOutros;
	
	public TblInformacaoCondutorMotivoQuebra() {
	}
	
	@Override
	public String getIdColumnName() {
		return "idFormulario";
	}
	
	@Override
	public String getIndexId() {
		return getIdFormulario()+"#"+getIdTipoMotivo();
	}

	@Override
    public boolean isCompoundKey() {
    	return true;
    }
    
    @Override
    public String getCompoundIdColumnName() {
    	return "IdTipoMotivo";
    }

	public String getIdFormulario() {
		return idFormulario;
	}

	public void setIdFormulario(String idFormulario) {
		this.idFormulario = idFormulario;
	}

	public int getIdTipoMotivo() {
		return idTipoMotivo;
	}

	public void setIdTipoMotivo(int idTipoMotivo) {
		this.idTipoMotivo = idTipoMotivo;
	}

	public String getQuaisOutros() {
		return quaisOutros;
	}

	public void setQuaisOutros(String quaisOutros) {
		this.quaisOutros = quaisOutros;
	}

}
