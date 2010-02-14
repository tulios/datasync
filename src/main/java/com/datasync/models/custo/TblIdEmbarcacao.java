package com.datasync.models.custo;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;

import com.datasync.models.IndexableEntity;

@Entity
@Table(name="TblIdEmbarcacao")
@SuppressWarnings("serial")
public class TblIdEmbarcacao extends IndexableEntity {

	@Id
	@Column(name = "IdFormulario")
	private String idFormulario;
	
	@Column(name = "NumeroEmbarcacao")
	private String numeroEmbarcacao;
	
	@Column(name = "AlunosMatutino", length=3)
	private String alunosmatutino;

	@Column(name = "AlunosNoturno", length=3)
	private String alunosnoturno;

	@Column(name = "AlunosVespertino", length=3)
	private String alunosvespertino;

	@Column(name = "AnoFabricacao", length=4)
	private String anofabricacao;

	@Column(name = "CapacidadeIndicada", length=3)
	private String capacidadeindicada;

	@Column(name = "CapacidadeInformada", length=3)
	private String capacidadeinformada;

	@Column(name = "DataAquisicao", length=10)
	private String dataaquisicao;

	@Column(name = "EmbarcacaoReserva", length=3)
	private String embarcacaoreserva;

	@Column(name = "MesLetivoChuva", length=2)
	private String mesletivochuva;

	@Column(name = "MesLetivoSeca", length=2)
	private String mesletivoseca;

	@Column(name = "NomeEmbarcacao", length=40)
	private String nomeembarcacao;

	@Column(name = "PosicaoMotor", length=2)
	private String posicaomotor;

	@Column(name = "PotenciaMotor", length=5)
	private String potenciamotor;

	@Column(name = "PropriedadeEmbarcacao", length=25)
	private String propriedadeembarcacao;

	@Column(name = "PropriedadeOutros", length=20)
	private String propriedadeoutros;

	@Column(name = "QuantidadeRota", length=2)
	private String quantidaderota;

	@Column(name = "QuantMotor", length=2)
	private String quantmotor;

	@Column(name = "RotaOD", length=100)
	private String rotaod;

	@Column(name = "SituacaoEmbarcacao", length=3)
	private String situacaoembarcacao;

	@Column(name = "TempoChuva", length=10)
	private String tempochuva;

	@Column(name = "TempoSeca", length=10)
	private String temposeca;

	@Column(name = "TipoCombustivel", length=15)
	private String tipocombustivel;

	@Column(name = "TipoEmbarcacao", length=1)
	private String tipoembarcacao;

	@Column(name = "TipoMaterial", length=10)
	private String tipomaterial;

	@Column(name = "UfEmbarcacao", length=2)
	private String ufembarcacao;

	@Column(name = "ValorCusto", length=10)
	private String valorcusto;

	@Column(name = "ValorEmbarcacao", length=10)
	private String valorembarcacao;

	@Column(name = "ValorUnidade", length=20)
	private String valorunidade;

    public TblIdEmbarcacao() {
    }

    @Override
    public String getIdColumnName() {
    	return "idFormulario";
    }
    
    @Override
    public boolean isCompoundKey() {
    	return true;
    }
    
    @Override
    public String getCompoundIdColumnName() {
    	return "numeroEmbarcacao";
    }
    
    @Override
    public String getIndexId() {
    	return getIdFormulario()+"#"+getNumeroEmbarcacao();
    }
    
	public String getIdFormulario() {
		return idFormulario;
	}

	public void setIdFormulario(String idFormulario) {
		this.idFormulario = idFormulario;
	}

	public String getNumeroEmbarcacao() {
		return numeroEmbarcacao;
	}

	public void setNumeroEmbarcacao(String numeroEmbarcacao) {
		this.numeroEmbarcacao = numeroEmbarcacao;
	}

	public String getAlunosmatutino() {
		return this.alunosmatutino;
	}

	public void setAlunosmatutino(String alunosmatutino) {
		this.alunosmatutino = alunosmatutino;
	}

	public String getAlunosnoturno() {
		return this.alunosnoturno;
	}

	public void setAlunosnoturno(String alunosnoturno) {
		this.alunosnoturno = alunosnoturno;
	}

	public String getAlunosvespertino() {
		return this.alunosvespertino;
	}

	public void setAlunosvespertino(String alunosvespertino) {
		this.alunosvespertino = alunosvespertino;
	}

	public String getAnofabricacao() {
		return this.anofabricacao;
	}

	public void setAnofabricacao(String anofabricacao) {
		this.anofabricacao = anofabricacao;
	}

	public String getCapacidadeindicada() {
		return this.capacidadeindicada;
	}

	public void setCapacidadeindicada(String capacidadeindicada) {
		this.capacidadeindicada = capacidadeindicada;
	}

	public String getCapacidadeinformada() {
		return this.capacidadeinformada;
	}

	public void setCapacidadeinformada(String capacidadeinformada) {
		this.capacidadeinformada = capacidadeinformada;
	}

	public String getDataaquisicao() {
		return this.dataaquisicao;
	}

	public void setDataaquisicao(String dataaquisicao) {
		this.dataaquisicao = dataaquisicao;
	}

	public String getEmbarcacaoreserva() {
		return this.embarcacaoreserva;
	}

	public void setEmbarcacaoreserva(String embarcacaoreserva) {
		this.embarcacaoreserva = embarcacaoreserva;
	}

	public String getMesletivochuva() {
		return this.mesletivochuva;
	}

	public void setMesletivochuva(String mesletivochuva) {
		this.mesletivochuva = mesletivochuva;
	}

	public String getMesletivoseca() {
		return this.mesletivoseca;
	}

	public void setMesletivoseca(String mesletivoseca) {
		this.mesletivoseca = mesletivoseca;
	}

	public String getNomeembarcacao() {
		return this.nomeembarcacao;
	}

	public void setNomeembarcacao(String nomeembarcacao) {
		this.nomeembarcacao = nomeembarcacao;
	}

	public String getPosicaomotor() {
		return this.posicaomotor;
	}

	public void setPosicaomotor(String posicaomotor) {
		this.posicaomotor = posicaomotor;
	}

	public String getPotenciamotor() {
		return this.potenciamotor;
	}

	public void setPotenciamotor(String potenciamotor) {
		this.potenciamotor = potenciamotor;
	}

	public String getPropriedadeembarcacao() {
		return this.propriedadeembarcacao;
	}

	public void setPropriedadeembarcacao(String propriedadeembarcacao) {
		this.propriedadeembarcacao = propriedadeembarcacao;
	}

	public String getPropriedadeoutros() {
		return this.propriedadeoutros;
	}

	public void setPropriedadeoutros(String propriedadeoutros) {
		this.propriedadeoutros = propriedadeoutros;
	}

	public String getQuantidaderota() {
		return this.quantidaderota;
	}

	public void setQuantidaderota(String quantidaderota) {
		this.quantidaderota = quantidaderota;
	}

	public String getQuantmotor() {
		return this.quantmotor;
	}

	public void setQuantmotor(String quantmotor) {
		this.quantmotor = quantmotor;
	}

	public String getRotaod() {
		return this.rotaod;
	}

	public void setRotaod(String rotaod) {
		this.rotaod = rotaod;
	}

	public String getSituacaoembarcacao() {
		return this.situacaoembarcacao;
	}

	public void setSituacaoembarcacao(String situacaoembarcacao) {
		this.situacaoembarcacao = situacaoembarcacao;
	}

	public String getTempochuva() {
		return this.tempochuva;
	}

	public void setTempochuva(String tempochuva) {
		this.tempochuva = tempochuva;
	}

	public String getTemposeca() {
		return this.temposeca;
	}

	public void setTemposeca(String temposeca) {
		this.temposeca = temposeca;
	}

	public String getTipocombustivel() {
		return this.tipocombustivel;
	}

	public void setTipocombustivel(String tipocombustivel) {
		this.tipocombustivel = tipocombustivel;
	}

	public String getTipoembarcacao() {
		return this.tipoembarcacao;
	}

	public void setTipoembarcacao(String tipoembarcacao) {
		this.tipoembarcacao = tipoembarcacao;
	}

	public String getTipomaterial() {
		return this.tipomaterial;
	}

	public void setTipomaterial(String tipomaterial) {
		this.tipomaterial = tipomaterial;
	}

	public String getUfembarcacao() {
		return this.ufembarcacao;
	}

	public void setUfembarcacao(String ufembarcacao) {
		this.ufembarcacao = ufembarcacao;
	}

	public String getValorcusto() {
		return this.valorcusto;
	}

	public void setValorcusto(String valorcusto) {
		this.valorcusto = valorcusto;
	}

	public String getValorembarcacao() {
		return this.valorembarcacao;
	}

	public void setValorembarcacao(String valorembarcacao) {
		this.valorembarcacao = valorembarcacao;
	}

	public String getValorunidade() {
		return this.valorunidade;
	}

	public void setValorunidade(String valorunidade) {
		this.valorunidade = valorunidade;
	}

}