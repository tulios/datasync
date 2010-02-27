package com.datasync.models.barco.condutor;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;

import com.datasync.models.IndexableEntity;

@Entity
@Table(name = "TblInformacaoCondutorPercursoTempo")
@SuppressWarnings("serial")
public class TblInformacaoCondutorPercursoTempo extends IndexableEntity {

	@Id
	@Column(name = "IdFormulario")
	private String idFormulario;
	@Column(name = "IdPercursoTempo")
	private int idPercursoTempo;
	@Column(name = "QuantoTempo")
	private String quantoTempo;
	@Column(name = "PorqueTempo")
	private String porqueTempo;
	
	public TblInformacaoCondutorPercursoTempo(){
	}
	
	@Override
	public String getIdColumnName() {
		return "idFormulario";
	}
	
	@Override
	public String getIndexId() {
		return getIdFormulario()+"#"+getIdPercursoTempo();
	}

	@Override
    public boolean isCompoundKey() {
    	return true;
    }
    
    @Override
    public String getCompoundIdColumnName() {
    	return "idPercursoTempo";
    }

	public String getIdFormulario() {
		return idFormulario;
	}

	public void setIdFormulario(String idFormulario) {
		this.idFormulario = idFormulario;
	}

	public int getIdPercursoTempo() {
		return idPercursoTempo;
	}

	public void setIdPercursoTempo(int idPercursoTempo) {
		this.idPercursoTempo = idPercursoTempo;
	}

	public String getQuantoTempo() {
		return quantoTempo;
	}

	public void setQuantoTempo(String quantoTempo) {
		this.quantoTempo = quantoTempo;
	}

	public String getPorqueTempo() {
		return porqueTempo;
	}

	public void setPorqueTempo(String porqueTempo) {
		this.porqueTempo = porqueTempo;
	}
	
}
