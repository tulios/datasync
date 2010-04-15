package com.datasync.models.barco.condutor;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;

import com.datasync.models.IndexableEntity;

@Entity
@Table(name = "tblInformacaoCondutor")
@SuppressWarnings("serial")
public class TblInformacaoCondutor extends IndexableEntity {

	@Id
	@Column(name = "IdFormulario")
	private String idFormulario;
	@Column(name = "QuantidadeRota")
	private int quantidadeRota;
	@Column(name = "TempoRotaLonga")
	private String tempoRotaLonga;
	@Column(name = "TempoRotaCurta")
	private String tempoRotaCurta;
	@Column(name = "NaoSabeTempo")
	private boolean naoSabeTempo;
	@Column(name = "QuantidadeRotaAtendida")
	private int quantidadeRotaAtendida;
	@Column(name = "QuaisRotasAtendidas")
	private String quaisRotasAtendidas;
	@Column(name = "DiferencaTempo", length = 3)
	private String diferencaTempo;
	@Column(name = "QualDiferencaTempo")
	private String qualDiferencaTempo;
	@Column(name = "Observacao")
	private String observacao;
	@Column(name = "CompraOLeo")
	private String compraOleoo;
	@Column(name = "Onde")
	private String onde;
	@Column(name = "Frequencia")
	private String frequencia;

	public TblInformacaoCondutor(){
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

	public int getQuantidadeRota() {
		return quantidadeRota;
	}

	public void setQuantidadeRota(int quantidadeRota) {
		this.quantidadeRota = quantidadeRota;
	}

	public String getTempoRotaLonga() {
		return tempoRotaLonga;
	}

	public void setTempoRotaLonga(String tempoRotaLonga) {
		this.tempoRotaLonga = tempoRotaLonga;
	}

	public String getTempoRotaCurta() {
		return tempoRotaCurta;
	}

	public void setTempoRotaCurta(String tempoRotaCurta) {
		this.tempoRotaCurta = tempoRotaCurta;
	}

	public boolean isNaoSabeTempo() {
		return naoSabeTempo;
	}

	public void setNaoSabeTempo(boolean naoSabeTempo) {
		this.naoSabeTempo = naoSabeTempo;
	}

	public int getQuantidadeRotaAtendida() {
		return quantidadeRotaAtendida;
	}

	public void setQuantidadeRotaAtendida(int quantidadeRotaAtendida) {
		this.quantidadeRotaAtendida = quantidadeRotaAtendida;
	}

	public String getQuaisRotasAtendidas() {
		return quaisRotasAtendidas;
	}

	public void setQuaisRotasAtendidas(String quaisRotasAtendidas) {
		this.quaisRotasAtendidas = quaisRotasAtendidas;
	}

	public String getDiferencaTempo() {
		return diferencaTempo;
	}

	public void setDiferencaTempo(String diferencaTempo) {
		this.diferencaTempo = diferencaTempo;
	}

	public String getQualDiferencaTempo() {
		return qualDiferencaTempo;
	}

	public void setQualDiferencaTempo(String qualDiferencaTempo) {
		this.qualDiferencaTempo = qualDiferencaTempo;
	}

	public String getObservacao() {
		return observacao;
	}

	public void setObservacao(String observacao) {
		this.observacao = observacao;
	}

	public String getCompraOleoo() {
		return compraOleoo;
	}

	public void setCompraOleoo(String compraOleoo) {
		this.compraOleoo = compraOleoo;
	}

	public String getOnde() {
		return onde;
	}

	public void setOnde(String onde) {
		this.onde = onde;
	}

	public String getFrequencia() {
		return frequencia;
	}

	public void setFrequencia(String frequencia) {
		this.frequencia = frequencia;
	}
	
}
