package com.datasync.models.barco;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;

import com.datasync.models.IndexableEntity;

@Entity
@Table(name = "tblInformacaoCondutorDonoBarco")
@SuppressWarnings("serial")
public class TblInformacaoCondutorDonoBarco extends IndexableEntity {

	@Id
	@Column(name = "IdFormulario")
	private String idFormulario;
	@Column(name = "IdTipoDonoBarco")
	private int idTipoDonoBarco;
	@Column(name = "Quem")
	private String quem;
	
	public TblInformacaoCondutorDonoBarco(){
	}
	
	@Override
	public String getIdColumnName() {
		return "idFormulario";
	}

	@Override
	public String getIndexId() {
		return getIdFormulario()+"#"+getIdTipoDonoBarco();
	}

	@Override
    public boolean isCompoundKey() {
    	return true;
    }
    
    @Override
    public String getCompoundIdColumnName() {
    	return "idTipoDonoBarco";
    }
    
	public String getIdFormulario() {
		return idFormulario;
	}

	public void setIdFormulario(String idFormulario) {
		this.idFormulario = idFormulario;
	}

	public int getIdTipoDonoBarco() {
		return idTipoDonoBarco;
	}

	public void setIdTipoDonoBarco(int idTipoDonoBarco) {
		this.idTipoDonoBarco = idTipoDonoBarco;
	}

	public String getQuem() {
		return quem;
	}

	public void setQuem(String quem) {
		this.quem = quem;
	}

}
