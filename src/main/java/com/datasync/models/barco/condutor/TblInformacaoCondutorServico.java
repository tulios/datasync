package com.datasync.models.barco.condutor;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;

import com.datasync.models.IndexableEntity;

@Entity
@Table(name = "TblInformacaoCondutorServico")
@SuppressWarnings("serial")
public class TblInformacaoCondutorServico extends IndexableEntity {

	@Id
	@Column(name = "IdFormulario")
	private String idFormulario;
	@Column(name = "IdTipoServico")
	private int idTipoServico;
	@Column(name = "QualOutro")
	private String qualOutro;
	@Column(name = "Frequencia")
	private String frequencia;
	
	public TblInformacaoCondutorServico(){
	}
	
	@Override
	public String getIdColumnName() {
		return "idFormulario";
	}
	
	@Override
	public String getIndexId() {
		return getIdFormulario()+"#"+getIdTipoServico();
	}

	@Override
    public boolean isCompoundKey() {
    	return true;
    }
    
    @Override
    public String getCompoundIdColumnName() {
    	return "idTipoServico";
    }

	public String getIdFormulario() {
		return idFormulario;
	}

	public void setIdFormulario(String idFormulario) {
		this.idFormulario = idFormulario;
	}

	public int getIdTipoServico() {
		return idTipoServico;
	}

	public void setIdTipoServico(int idTipoServico) {
		this.idTipoServico = idTipoServico;
	}

	public String getQualOutro() {
		return qualOutro;
	}

	public void setQualOutro(String qualOutro) {
		this.qualOutro = qualOutro;
	}

	public String getFrequencia() {
		return frequencia;
	}

	public void setFrequencia(String frequencia) {
		this.frequencia = frequencia;
	}
    
}
