package com.datasync.models.barco.fad;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;

import com.datasync.models.IndexableEntity;

@Entity
@Table(name = "tblComportamentoEstabilidade")
@SuppressWarnings("serial")
public class TblComportamentoEstabilidade extends IndexableEntity {

	@Id
	@Column(name = "IdFormulario")
	private String idFormulario;
	@Column(name = "FazAgua")
	private int fazAgua;
	@Column(name = "VisibilidadeReduzida")
	private int visibilidadeReduzida;
	@Column(name = "AdernaLados")
	private int adernaLados;
	@Column(name = "BarqueiroNavegou")
	private int barqueiroNavegou;
	
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

	public int getFazAgua() {
		return fazAgua;
	}

	public void setFazAgua(int fazAgua) {
		this.fazAgua = fazAgua;
	}

	public int getVisibilidadeReduzida() {
		return visibilidadeReduzida;
	}

	public void setVisibilidadeReduzida(int visibilidadeReduzida) {
		this.visibilidadeReduzida = visibilidadeReduzida;
	}

	public int getAdernaLados() {
		return adernaLados;
	}

	public void setAdernaLados(int adernaLados) {
		this.adernaLados = adernaLados;
	}

	public int getBarqueiroNavegou() {
		return barqueiroNavegou;
	}

	public void setBarqueiroNavegou(int barqueiroNavegou) {
		this.barqueiroNavegou = barqueiroNavegou;
	}

}
