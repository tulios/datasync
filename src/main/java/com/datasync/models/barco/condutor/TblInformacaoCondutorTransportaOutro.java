package com.datasync.models.barco.condutor;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;

import com.datasync.models.IndexableEntity;

@Entity
@Table(name = "TblInformacaoCondutorTransportaOutro")
@SuppressWarnings("serial")
public class TblInformacaoCondutorTransportaOutro extends IndexableEntity {

	@Id
	@Column(name = "IdFormulario")
	private String idFormulario;
	@Column(name = "IdTipoTransportaOutro")
	private int idTipoTransportaOutro;
	@Column(name = "QualOutro")
	private String qualOutro;
	
	@Override
	public String getIdColumnName() {
		return "idFormulario";
	}
	
	@Override
	public String getIndexId() {
		return getIdFormulario()+"#"+getIdTipoTransportaOutro();
	}

	@Override
    public boolean isCompoundKey() {
    	return true;
    }
    
    @Override
    public String getCompoundIdColumnName() {
    	return "idTipoTransportaOutro";
    }

	public String getIdFormulario() {
		return idFormulario;
	}

	public void setIdFormulario(String idFormulario) {
		this.idFormulario = idFormulario;
	}

	public int getIdTipoTransportaOutro() {
		return idTipoTransportaOutro;
	}

	public void setIdTipoTransportaOutro(int idTipoTransportaOutro) {
		this.idTipoTransportaOutro = idTipoTransportaOutro;
	}

	public String getQualOutro() {
		return qualOutro;
	}

	public void setQualOutro(String qualOutro) {
		this.qualOutro = qualOutro;
	}

}
