package com.datasync.models.barco.condutor;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;

import com.datasync.models.IndexableEntity;

@Entity
@Table(name = "TblInformacaoCondutorTrabalhaRota")
@SuppressWarnings("serial")
public class TblInformacaoCondutorTrabalhaRota extends IndexableEntity {

	@Id
	@Column(name = "IdFormulario")
	private String idFormulario;
	@Column(name = "IdTipoNaoTrabalhaRota")
	private int idTipoNaoTrabalhaRota;
	@Column(name = "SempreTrabalhou")
	private String sempreTrabalhou;
	@Column(name = "QualOutro")
	private String qualOutro;
	
	@Override
	public String getIdColumnName() {
		return "idFormulario";
	}
	
	@Override
	public String getIndexId() {
		return getIdFormulario()+"#"+getIdTipoNaoTrabalhaRota();
	}

	@Override
    public boolean isCompoundKey() {
    	return true;
    }
    
    @Override
    public String getCompoundIdColumnName() {
    	return "idTipoNaoTrabalhaRota";
    }

	public String getIdFormulario() {
		return idFormulario;
	}

	public void setIdFormulario(String idFormulario) {
		this.idFormulario = idFormulario;
	}

	public int getIdTipoNaoTrabalhaRota() {
		return idTipoNaoTrabalhaRota;
	}

	public void setIdTipoNaoTrabalhaRota(int idTipoNaoTrabalhaRota) {
		this.idTipoNaoTrabalhaRota = idTipoNaoTrabalhaRota;
	}

	public String getSempreTrabalhou() {
		return sempreTrabalhou;
	}

	public void setSempreTrabalhou(String sempreTrabalhou) {
		this.sempreTrabalhou = sempreTrabalhou;
	}

	public String getQualOutro() {
		return qualOutro;
	}

	public void setQualOutro(String qualOutro) {
		this.qualOutro = qualOutro;
	}

}
