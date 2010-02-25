package com.datasync.models.barco;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;

import com.datasync.models.IndexableEntity;

@Entity
@Table(name = "TblInformacaoCondutorOutroAcompanhante")
@SuppressWarnings("serial")
public class TblInformacaoCondutorOutroAcompanhante extends IndexableEntity {

	@Id
	@Column(name = "IdFormulario")
	private String idFormulario;
	@Column(name = "IdTipoOutroAcompanhante")
	private int idTipoOutroAcompanhante;
	@Column(name = "OutroAcompanhante")
	private String outroAcompanhante;
	@Column(name = "QuemOutro")
	private String quemOutro;
	
	public TblInformacaoCondutorOutroAcompanhante() {
	}
	
	@Override
	public String getIdColumnName() {
		return "idFormulario";
	}
	
	@Override
	public String getIndexId() {
		return getIdFormulario()+"#"+getIdTipoOutroAcompanhante();
	}

	@Override
    public boolean isCompoundKey() {
    	return true;
    }
    
    @Override
    public String getCompoundIdColumnName() {
    	return "IdTipoOutroAcompanhante";
    }

	public String getIdFormulario() {
		return idFormulario;
	}

	public void setIdFormulario(String idFormulario) {
		this.idFormulario = idFormulario;
	}

	public int getIdTipoOutroAcompanhante() {
		return idTipoOutroAcompanhante;
	}

	public void setIdTipoOutroAcompanhante(int idTipoOutroAcompanhante) {
		this.idTipoOutroAcompanhante = idTipoOutroAcompanhante;
	}

	public String getQuemOutro() {
		return quemOutro;
	}

	public void setQuemOutro(String quemOutro) {
		this.quemOutro = quemOutro;
	}

	public String getOutroAcompanhante() {
		return outroAcompanhante;
	}

	public void setOutroAcompanhante(String outroAcompanhante) {
		this.outroAcompanhante = outroAcompanhante;
	}
	
}
