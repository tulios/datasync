package com.datasync.models.barco.condutor;

import java.sql.Timestamp;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;

import com.datasync.models.IndexableEntity;

@Entity
@Table(name = "tblCabecalhoCondutor")
@SuppressWarnings("serial")
public class TblBarcoCabecalhoCondutor extends IndexableEntity {

	@Id
	@Column(name = "IdFormulario")
	private String idFormulario;
	@Column(name = "IdPesquisador")
	private String idPesquisador;
	@Column(name = "IdRota")
	private int idRota;
	@Column(name = "IdMunicipio")
	private int idMunicipio;
	@Column(name = "Rota")
	private String rota;
	@Column(name = "Data")
	private Timestamp data;
	@Column(name = "HorarioInicio")
	private String horarioInicio;
	@Column(name = "HorarioTermino")
	private String horarioTermino;
	@Column(name = "Observacao")
	private String observacao;
	
	public TblBarcoCabecalhoCondutor(){
	}
	
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

	public String getIdPesquisador() {
		return idPesquisador;
	}

	public void setIdPesquisador(String idPesquisador) {
		this.idPesquisador = idPesquisador;
	}

	public int getIdMunicipio() {
		return idMunicipio;
	}

	public void setIdMunicipio(int idMunicipio) {
		this.idMunicipio = idMunicipio;
	}

	public String getRota() {
		return rota;
	}

	public void setRota(String rota) {
		this.rota = rota;
	}

	public Timestamp getData() {
		return data;
	}

	public void setData(Timestamp data) {
		this.data = data;
	}

	public String getHorarioInicio() {
		return horarioInicio;
	}

	public void setHorarioInicio(String horarioInicio) {
		this.horarioInicio = horarioInicio;
	}

	public String getHorarioTermino() {
		return horarioTermino;
	}

	public void setHorarioTermino(String horarioTermino) {
		this.horarioTermino = horarioTermino;
	}

	public int getIdRota() {
		return idRota;
	}

	public void setIdRota(int idRota) {
		this.idRota = idRota;
	}

	public String getObservacao() {
		return observacao;
	}

	public void setObservacao(String observacao) {
		this.observacao = observacao;
	}
	
}
