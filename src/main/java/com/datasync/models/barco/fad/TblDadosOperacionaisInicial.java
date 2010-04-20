package com.datasync.models.barco.fad;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;

import com.datasync.models.IndexableEntity;

@Entity
@Table(name = "tblDadosOperacionaisInicial")
@SuppressWarnings("serial")
public class TblDadosOperacionaisInicial extends IndexableEntity {

	@Id
	@Column(name = "IdFormulario")
	private String idFormulario;
	@Column(name = "IdaVolta")
	private int idaVolta;
	@Column(name = "PontoGPSInicial")
	private String pontoGPSInicial;
	@Column(name = "GPSOdometroInicial")
	private double gpsOdometroInicial;
	@Column(name = "HoraInicial")
	private String horaInicial;
	@Column(name = "LocalInicio")
	private String localInicio;
	@Column(name = "QuantidadeEmbarque")
	private int quantidadeEmbarque;
	
	@Override
	public String getIdColumnName() {
		return "IdFormulario";
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

	public int getIdaVolta() {
		return idaVolta;
	}

	public void setIdaVolta(int idaVolta) {
		this.idaVolta = idaVolta;
	}

	public String getPontoGPSInicial() {
		return pontoGPSInicial;
	}

	public void setPontoGPSInicial(String pontoGPSInicial) {
		this.pontoGPSInicial = pontoGPSInicial;
	}

	public double getGpsOdometroInicial() {
		return gpsOdometroInicial;
	}

	public void setGpsOdometroInicial(double gpsOdometroInicial) {
		this.gpsOdometroInicial = gpsOdometroInicial;
	}

	public String getHoraInicial() {
		return horaInicial;
	}

	public void setHoraInicial(String horaInicial) {
		this.horaInicial = horaInicial;
	}

	public String getLocalInicio() {
		return localInicio;
	}

	public void setLocalInicio(String localInicio) {
		this.localInicio = localInicio;
	}

	public int getQuantidadeEmbarque() {
		return quantidadeEmbarque;
	}

	public void setQuantidadeEmbarque(int quantidadeEmbarque) {
		this.quantidadeEmbarque = quantidadeEmbarque;
	}
	
}
