package com.datasync.models.barco.fad;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;

import com.datasync.models.IndexableEntity;

@Entity
@Table(name = "tblDadosOperacionaisFinal")
@SuppressWarnings("serial")
public class TblDadosOperacionaisFinal extends IndexableEntity {

	@Id
	@Column(name = "IdFormulario")
	private String idFormulario;
	@Column(name = "CodigoParadaTermino")
	private String codigoParadaTermino;
	@Column(name = "GPSOdometroFinal")
	private double gpsOdometroFinal;
	@Column(name = "HoraFinal")
	private String horaFinal;
	@Column(name = "LocalFinal")
	private String localFinal;
	@Column(name = "CodigoPontoEscola")
	private String codigoPontoEscola;
	@Column(name = "CodigobarcoAtracagem")
	private String codigoBarcoAtracagem;
	@Column(name = "CodigoBarcoParadaFinal")
	private String codigoBarcoParadaFinal;
	@Column(name = "DesembarqueFinal")
	private int desembarqueFinal;
	
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

	public String getCodigoParadaTermino() {
		return codigoParadaTermino;
	}

	public void setCodigoParadaTermino(String codigoParadaTermino) {
		this.codigoParadaTermino = codigoParadaTermino;
	}

	public double getGpsOdometroFinal() {
		return gpsOdometroFinal;
	}

	public void setGpsOdometroFinal(double gpsOdometroFinal) {
		this.gpsOdometroFinal = gpsOdometroFinal;
	}

	public String getHoraFinal() {
		return horaFinal;
	}

	public void setHoraFinal(String horaFinal) {
		this.horaFinal = horaFinal;
	}

	public String getLocalFinal() {
		return localFinal;
	}

	public void setLocalFinal(String localFinal) {
		this.localFinal = localFinal;
	}

	public String getCodigoPontoEscola() {
		return codigoPontoEscola;
	}

	public void setCodigoPontoEscola(String codigoPontoEscola) {
		this.codigoPontoEscola = codigoPontoEscola;
	}

	public String getCodigoBarcoAtracagem() {
		return codigoBarcoAtracagem;
	}

	public void setCodigoBarcoAtracagem(String codigoBarcoAtracagem) {
		this.codigoBarcoAtracagem = codigoBarcoAtracagem;
	}

	public String getCodigoBarcoParadaFinal() {
		return codigoBarcoParadaFinal;
	}

	public void setCodigoBarcoParadaFinal(String codigoBarcoParadaFinal) {
		this.codigoBarcoParadaFinal = codigoBarcoParadaFinal;
	}

	public int getDesembarqueFinal() {
		return desembarqueFinal;
	}

	public void setDesembarqueFinal(int desembarqueFinal) {
		this.desembarqueFinal = desembarqueFinal;
	}
	
}
