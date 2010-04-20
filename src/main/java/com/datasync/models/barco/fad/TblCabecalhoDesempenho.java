package com.datasync.models.barco.fad;

import java.util.Date;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;

import com.datasync.models.IndexableEntity;

@Entity
@Table(name = "tblCabecalhoDesempenho")
@SuppressWarnings("serial")
public class TblCabecalhoDesempenho extends IndexableEntity {

	@Id
	@Column(name = "IdFormulario")
	private String idFormulario;
	@Column(name = "Pesquisador")
	private String pesquisador;
	@Column(name = "Data")
	private Date data;
	@Column(name = "IdMunicipio")
	private int idMunicipio;
	@Column(name = "IdRota")
	private int idRota;
	@Column(name = "Rota")
	private String Rota;
	@Column(name = "TipoAvaliado")
	private int tipoAvaliado;
	@Column(name = "PotenciaMotor")
	private double potenciaMotor;
	@Column(name = "CaracteristicaRota")
	private int caracteristicaRota;
	@Column(name = "TipoNaoAvaliado")
	private int tipoNaoAvaliado;
	@Column(name = "Referencia")
	private int referencia;
	
	@Override
	public String getIdColumnName() {
		return "idFormulario";
	}

	@Override
	public String getIndexId() {
		return getIdFormulario();
	}

	public String getIdFormulario() {
		return idFormulario;
	}

	public void setIdFormulario(String idFormulario) {
		this.idFormulario = idFormulario;
	}

	public String getPesquisador() {
		return pesquisador;
	}

	public void setPesquisador(String pesquisador) {
		this.pesquisador = pesquisador;
	}

	public Date getData() {
		return data;
	}

	public void setData(Date data) {
		this.data = data;
	}

	public int getIdMunicipio() {
		return idMunicipio;
	}

	public void setIdMunicipio(int idMunicipio) {
		this.idMunicipio = idMunicipio;
	}

	public int getIdRota() {
		return idRota;
	}

	public void setIdRota(int idRota) {
		this.idRota = idRota;
	}

	public String getRota() {
		return Rota;
	}

	public void setRota(String rota) {
		Rota = rota;
	}

	public int getTipoAvaliado() {
		return tipoAvaliado;
	}

	public void setTipoAvaliado(int tipoAvaliado) {
		this.tipoAvaliado = tipoAvaliado;
	}

	public double getPotenciaMotor() {
		return potenciaMotor;
	}

	public void setPotenciaMotor(double potenciaMotor) {
		this.potenciaMotor = potenciaMotor;
	}

	public int getCaracteristicaRota() {
		return caracteristicaRota;
	}

	public void setCaracteristicaRota(int caracteristicaRota) {
		this.caracteristicaRota = caracteristicaRota;
	}

	public int getTipoNaoAvaliado() {
		return tipoNaoAvaliado;
	}

	public void setTipoNaoAvaliado(int tipoNaoAvaliado) {
		this.tipoNaoAvaliado = tipoNaoAvaliado;
	}

	public int getReferencia() {
		return referencia;
	}

	public void setReferencia(int referencia) {
		this.referencia = referencia;
	}
	
}
