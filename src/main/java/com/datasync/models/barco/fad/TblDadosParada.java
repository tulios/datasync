package com.datasync.models.barco.fad;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;

import com.datasync.models.IndexableEntity;

@Entity
@Table(name = "tblDadosParada")
@SuppressWarnings("serial")
public class TblDadosParada extends IndexableEntity {

	@Id
	@Column(name = "IdFormulario")
	private String idFormulario;
	@Column(name = "IdTipoParada")
	private int idTipoParada;
	@Column(name = "CodigoParada")
	private String codigoParada;
	@Column(name = "CodigoAtracagem")
	private String codigoAtracagem;
	@Column(name = "CodigoSaida")
	private String codigoSaida;
	@Column(name = "QuantidadeEmbarque")
	private int quantidadeEmbarque;
	@Column(name = "QuantidadeDesembarque")
	private int quantidadeDesembarque; 
	
	@Override
	public String getIdColumnName() {
        return "idFormulario";
	}

	@Override
	public String getIndexId() {
		return getIdFormulario()+"#"+getIdTipoParada();
	}

	public String getIdFormulario() {
		return idFormulario;
	}

	public void setIdFormulario(String idFormulario) {
		this.idFormulario = idFormulario;
	}

	public int getIdTipoParada() {
		return idTipoParada;
	}

	public void setIdTipoParada(int idTipoParada) {
		this.idTipoParada = idTipoParada;
	}

	public String getCodigoParada() {
		return codigoParada;
	}

	public void setCodigoParada(String codigoParada) {
		this.codigoParada = codigoParada;
	}

	public String getCodigoAtracagem() {
		return codigoAtracagem;
	}

	public void setCodigoAtracagem(String codigoAtracagem) {
		this.codigoAtracagem = codigoAtracagem;
	}

	public String getCodigoSaida() {
		return codigoSaida;
	}

	public void setCodigoSaida(String codigoSaida) {
		this.codigoSaida = codigoSaida;
	}

	public int getQuantidadeEmbarque() {
		return quantidadeEmbarque;
	}

	public void setQuantidadeEmbarque(int quantidadeEmbarque) {
		this.quantidadeEmbarque = quantidadeEmbarque;
	}

	public int getQuantidadeDesembarque() {
		return quantidadeDesembarque;
	}

	public void setQuantidadeDesembarque(int quantidadeDesembarque) {
		this.quantidadeDesembarque = quantidadeDesembarque;
	}
	
}
