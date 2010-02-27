package com.datasync.models.barco.condutor;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;

import com.datasync.models.IndexableEntity;

@Entity
@Table(name = "TblInformacaoCondutorRealizaReparo")
@SuppressWarnings("serial")
public class TblInformacaoCondutorRealizaReparo extends IndexableEntity {

	@Id
	@Column(name = "IdFormulario")
	private String idFormulario;
	@Column(name = "IdTipoRealizaManutencao")
	private int idTipoRealizaManutencao;
	@Column(name = "QuemOutro")
	private String quemOutro;
	
	public TblInformacaoCondutorRealizaReparo(){
	}
	
	@Override
	public String getIdColumnName() {
		return "idFormulario";
	}
	
	@Override
	public String getIndexId() {
		return getIdFormulario()+"#"+getIdTipoRealizaManutencao();
	}

	@Override
    public boolean isCompoundKey() {
    	return true;
    }
    
    @Override
    public String getCompoundIdColumnName() {
    	return "idTipoRealizaManutencao";
    }

	public String getIdFormulario() {
		return idFormulario;
	}

	public void setIdFormulario(String idFormulario) {
		this.idFormulario = idFormulario;
	}

	public int getIdTipoRealizaManutencao() {
		return idTipoRealizaManutencao;
	}

	public void setIdTipoRealizaManutencao(int idTipoRealizaManutencao) {
		this.idTipoRealizaManutencao = idTipoRealizaManutencao;
	}

	public String getQuemOutro() {
		return quemOutro;
	}

	public void setQuemOutro(String quemOutro) {
		this.quemOutro = quemOutro;
	}
    
}
