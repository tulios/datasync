package com.datasync.models.barco;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;

import com.datasync.models.IndexableEntity;

@Entity
@Table(name = "TblInformacaoCondutorPagaManutencao")
@SuppressWarnings("serial")
public class TblInformacaoCondutorPagaManutencao extends IndexableEntity {
	
	@Id
	@Column(name = "IdFormulario")
	private String idFormulario;
	@Column(name = "IdTipoPagaManutencao")
	private int idTipoPagaManutencao;
	private String qualOutro;
	
	public TblInformacaoCondutorPagaManutencao(){
	}
	
	@Override
	public String getIdColumnName() {
		return "idFormulario";
	}
	
	@Override
	public String getIndexId() {
		return getIdFormulario()+"#"+getIdTipoPagaManutencao();
	}

	@Override
    public boolean isCompoundKey() {
    	return true;
    }
    
    @Override
    public String getCompoundIdColumnName() {
    	return "idTipoPagaManutencao";
    }

	public String getIdFormulario() {
		return idFormulario;
	}

	public void setIdFormulario(String idFormulario) {
		this.idFormulario = idFormulario;
	}

	public int getIdTipoPagaManutencao() {
		return idTipoPagaManutencao;
	}

	public void setIdTipoPagaManutencao(int idTipoPagaManutencao) {
		this.idTipoPagaManutencao = idTipoPagaManutencao;
	}

	public String getQualOutro() {
		return qualOutro;
	}

	public void setQualOutro(String qualOutro) {
		this.qualOutro = qualOutro;
	}
	
}
