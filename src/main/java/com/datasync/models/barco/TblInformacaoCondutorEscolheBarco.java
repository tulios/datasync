package com.datasync.models.barco;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;

import com.datasync.models.IndexableEntity;

@Entity
@Table(name = "TblInformacaoCondutorEscolheBarco")
@SuppressWarnings("serial")
public class TblInformacaoCondutorEscolheBarco extends IndexableEntity {

	@Id
	@Column(name = "IdFormulario")
	private String idFormulario;
	@Column(name = "IdTipoEscolheBarco")
	private int idTipoEscolheBarco;
	@Column(name = "QuemOutro")
	private String quemOutro;
	
	public TblInformacaoCondutorEscolheBarco() {
	}
	
	@Override
	public String getIdColumnName() {
		return "idFormulario";
	}
	
	@Override
	public String getIndexId() {
		return getIdFormulario()+"#"+getIdTipoEscolheBarco();
	}

	@Override
    public boolean isCompoundKey() {
    	return true;
    }
    
    @Override
    public String getCompoundIdColumnName() {
    	return "idTipoEscolheBarco";
    }

	public String getIdFormulario() {
		return idFormulario;
	}

	public void setIdFormulario(String idFormulario) {
		this.idFormulario = idFormulario;
	}

	public int getIdTipoEscolheBarco() {
		return idTipoEscolheBarco;
	}

	public void setIdTipoEscolheBarco(int idTipoEscolheBarco) {
		this.idTipoEscolheBarco = idTipoEscolheBarco;
	}

	public String getQuemOutro() {
		return quemOutro;
	}

	public void setQuemOutro(String quemOutro) {
		this.quemOutro = quemOutro;
	}

}
