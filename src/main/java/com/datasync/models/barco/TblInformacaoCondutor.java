package com.datasync.models.barco;

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
	@Column(name = "QuaisOutrosContratos")
	private String quaisOutrosContratos;
	@Column(name = "FrequenciaFiscalizacao")
	private int frequenciaFiscalizacao;
	@Column(name = "QualOutroFiscalizacao", length = 10)
	private String qualOutroFiscalizacao;
	@Column(name = "PercursoMaisTempo")
	private int percursoMaisTempo;
	@Column(name = "QuantoTempo")
	private String quantoTempo;
	@Column(name = "PorqueMaisTempo")
	private String porqueMaisTempo;
	@Column(name = "DiferencaTempo", length = 3)
	private String diferencaTempo;
	@Column(name = "QualDiferencaTempo")
	private String qualDiferencaTempo;

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

	public String getQuaisOutrosContratos() {
		return quaisOutrosContratos;
	}

	public void setQuaisOutrosContratos(String quaisOutrosContratos) {
		this.quaisOutrosContratos = quaisOutrosContratos;
	}

	public int getFrequenciaFiscalizacao() {
		return frequenciaFiscalizacao;
	}

	public void setFrequenciaFiscalizacao(int frequenciaFiscalizacao) {
		this.frequenciaFiscalizacao = frequenciaFiscalizacao;
	}

	public String getQualOutroFiscalizacao() {
		return qualOutroFiscalizacao;
	}

	public void setQualOutroFiscalizacao(String qualOutroFiscalizacao) {
		this.qualOutroFiscalizacao = qualOutroFiscalizacao;
	}

	public int getPercursoMaisTempo() {
		return percursoMaisTempo;
	}

	public void setPercursoMaisTempo(int percursoMaisTempo) {
		this.percursoMaisTempo = percursoMaisTempo;
	}

	public String getQuantoTempo() {
		return quantoTempo;
	}

	public void setQuantoTempo(String quantoTempo) {
		this.quantoTempo = quantoTempo;
	}

	public String getPorqueMaisTempo() {
		return porqueMaisTempo;
	}

	public void setPorqueMaisTempo(String porqueMaisTempo) {
		this.porqueMaisTempo = porqueMaisTempo;
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
	
}
