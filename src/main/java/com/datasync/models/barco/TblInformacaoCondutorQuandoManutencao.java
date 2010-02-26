package com.datasync.models.barco;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;

import com.datasync.models.IndexableEntity;

@Entity
@Table(name = "TblInformacaoCondutorQuandoManutencao")
@SuppressWarnings("serial")
public class TblInformacaoCondutorQuandoManutencao extends IndexableEntity{
	
	@Id
	@Column(name = "IdFormulario")
	private String idFormulario;
	@Column(name = "IdTipoQuandoManutencao")
	private int idTipoQuandoManutencao;
	@Column(name = "QuandoOutro")
	private String quandoOutro;
	
	public TblInformacaoCondutorQuandoManutencao(){
	}
	
	@Override
	public String getIdColumnName() {
		return "idFormulario";
	}
	
	@Override
	public String getIndexId() {
		return getIdFormulario()+"#"+getIdTipoQuandoManutencao();
	}

	@Override
    public boolean isCompoundKey() {
    	return true;
    }
    
    @Override
    public String getCompoundIdColumnName() {
    	return "idTipoQuandoManutencao";
    }

	public String getIdFormulario() {
		return idFormulario;
	}

	public void setIdFormulario(String idFormulario) {
		this.idFormulario = idFormulario;
	}

	public int getIdTipoQuandoManutencao() {
		return idTipoQuandoManutencao;
	}

	public void setIdTipoQuandoManutencao(int idTipoQuandoManutencao) {
		this.idTipoQuandoManutencao = idTipoQuandoManutencao;
	}

	public String getQuandoOutro() {
		return quandoOutro;
	}

	public void setQuandoOutro(String quandoOutro) {
		this.quandoOutro = quandoOutro;
	}
	
}
