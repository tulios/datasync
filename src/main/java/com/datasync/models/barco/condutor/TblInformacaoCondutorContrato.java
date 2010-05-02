package com.datasync.models.barco.condutor;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;

import com.datasync.models.IndexableEntity;

@Entity
@Table(name = "TblInformacaoCondutorContrato")
@SuppressWarnings("serial")
public class TblInformacaoCondutorContrato extends IndexableEntity {

	@Id
	@Column(name = "IdFormulario")
	private String idFormulario;
	@Column(name = "IdTipoContrato")
	private int idTipoContrato;
	@Column(name = "Valor")
	private String valor;
	@Column(name = "FormaContrato")
	private int formaContrato;
	@Column(name = "TipoPagamento")
	private String tipoPagamento;
	@Column(name = "Pagamento")
	private String pagamento;
	@Column(name = "QuaisOutros")
	private String quaisOutros;
	
	public TblInformacaoCondutorContrato(){
	}
	
	@Override
	public String getIdColumnName() {
		return "idFormulario";
	}
	
	@Override
	public String getIndexId() {
		return getIdFormulario()+"#"+getIdTipoContrato();
	}

	@Override
    public boolean isCompoundKey() {
    	return true;
    }
    
    @Override
    public String getCompoundIdColumnName() {
    	return "idTipoContrato";
    }

	public String getIdFormulario() {
		return idFormulario;
	}

	public void setIdFormulario(String idFormulario) {
		this.idFormulario = idFormulario;
	}

	public int getIdTipoContrato() {
		return idTipoContrato;
	}

	public void setIdTipoContrato(int idTipoContrato) {
		this.idTipoContrato = idTipoContrato;
	}

	public String getValor() {
		return valor;
	}

	public void setValor(String valor) {
		this.valor = valor;
	}

	public int getFormaContrato() {
		return formaContrato;
	}

	public void setFormaContrato(int formaContrato) {
		this.formaContrato = formaContrato;
	}

	public String getTipoPagamento() {
		return tipoPagamento;
	}

	public void setTipoPagamento(String tipoPagamento) {
		this.tipoPagamento = tipoPagamento;
	}

	public String getPagamento() {
		return pagamento;
	}

	public void setPagamento(String pagamento) {
		this.pagamento = pagamento;
	}

	public String getQuaisOutros() {
		return quaisOutros;
	}

	public void setQuaisOutros(String quaisOutros) {
		this.quaisOutros = quaisOutros;
	}
}
