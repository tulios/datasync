package com.datasync.models.barco.fad;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;

import com.datasync.models.IndexableEntity;

@Entity
@Table(name = "tblEventosExternos")
@SuppressWarnings("serial")
public class TblEventosExternos extends IndexableEntity {
	
	@Id
	@Column(name = "IdFormulario")
	private String idFormulario;
	@Column(name = "QuandoObstaculos")
	private int quandoObstaculos;
	@Column(name = "FotoObstaculo1")
	private String fotoObstaculo1;
	@Column(name = "FotoObstaculo2")
	private String fotoObstaculo2;
	@Column(name = "FotoObstaculo3")
	private String fotoObstaculo3;
	@Column(name = "ColisãoBateu")
	private int colisaoBateu;
	@Column(name = "GPSInicial")
	private String gpsInicial;
	@Column(name = "GPSFinal")
	private String gpsFinal;
	@Column(name = "OndasGeradas")
	private int ondasGeradas;
	@Column(name = "FotoOnda1")
	private String fotoOnda1;
	@Column(name = "FotoOnda2")
	private String fotoOnda2;
	@Column(name = "Filmagem")
	private String filmagem;
	@Column(name = "Meandros")
	private int meandros;
	@Column(name = "FotoMeandros")
	private String fotoMeandros;
	@Column(name = "LarguraInsuficiente")
	private int larguraInsuficiente;
	@Column(name = "FotoLarguraInsuficiente")
	private String fotoLarguraInsuficiente;
	@Column(name = "ComportamentoOnda")
	private int comportamentoOnda;
	@Column(name = "Aceleracao")
	private int aceleracao;
	
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

	public int getQuandoObstaculos() {
		return quandoObstaculos;
	}

	public void setQuandoObstaculos(int quandoObstaculos) {
		this.quandoObstaculos = quandoObstaculos;
	}

	public String getFotoObstaculo1() {
		return fotoObstaculo1;
	}

	public void setFotoObstaculo1(String fotoObstaculo1) {
		this.fotoObstaculo1 = fotoObstaculo1;
	}

	public String getFotoObstaculo2() {
		return fotoObstaculo2;
	}

	public void setFotoObstaculo2(String fotoObstaculo2) {
		this.fotoObstaculo2 = fotoObstaculo2;
	}

	public String getFotoObstaculo3() {
		return fotoObstaculo3;
	}

	public void setFotoObstaculo3(String fotoObstaculo3) {
		this.fotoObstaculo3 = fotoObstaculo3;
	}

	public int getColisaoBateu() {
		return colisaoBateu;
	}

	public void setColisaoBateu(int colisaoBateu) {
		this.colisaoBateu = colisaoBateu;
	}

	public String getGpsInicial() {
		return gpsInicial;
	}

	public void setGpsInicial(String gpsInicial) {
		this.gpsInicial = gpsInicial;
	}

	public String getGpsFinal() {
		return gpsFinal;
	}

	public void setGpsFinal(String gpsFinal) {
		this.gpsFinal = gpsFinal;
	}

	public int getOndasGeradas() {
		return ondasGeradas;
	}

	public void setOndasGeradas(int ondasGeradas) {
		this.ondasGeradas = ondasGeradas;
	}

	public String getFotoOnda1() {
		return fotoOnda1;
	}

	public void setFotoOnda1(String fotoOnda1) {
		this.fotoOnda1 = fotoOnda1;
	}

	public String getFotoOnda2() {
		return fotoOnda2;
	}

	public void setFotoOnda2(String fotoOnda2) {
		this.fotoOnda2 = fotoOnda2;
	}

	public String getFilmagem() {
		return filmagem;
	}

	public void setFilmagem(String filmagem) {
		this.filmagem = filmagem;
	}

	public int getMeandros() {
		return meandros;
	}

	public void setMeandros(int meandros) {
		this.meandros = meandros;
	}

	public String getFotoMeandros() {
		return fotoMeandros;
	}

	public void setFotoMeandros(String fotoMeandros) {
		this.fotoMeandros = fotoMeandros;
	}

	public int getLarguraInsuficiente() {
		return larguraInsuficiente;
	}

	public void setLarguraInsuficiente(int larguraInsuficiente) {
		this.larguraInsuficiente = larguraInsuficiente;
	}

	public String getFotoLarguraInsuficiente() {
		return fotoLarguraInsuficiente;
	}

	public void setFotoLarguraInsuficiente(String fotoLarguraInsuficiente) {
		this.fotoLarguraInsuficiente = fotoLarguraInsuficiente;
	}

	public int getComportamentoOnda() {
		return comportamentoOnda;
	}

	public void setComportamentoOnda(int comportamentoOnda) {
		this.comportamentoOnda = comportamentoOnda;
	}

	public int getAceleracao() {
		return aceleracao;
	}

	public void setAceleracao(int aceleracao) {
		this.aceleracao = aceleracao;
	}
	
}
