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
	@Column(name = "IdEmbarcacao")
	private String idEmbarcacao;
	@Column(name = "NomeEmbarcacao")
	private String nomeembarcacao;
	@Column(name = "UfEmbarcacao")
	private String ufembarcacao;
	@Column(name = "AnoFabricacao")
	private String anofabricacao;
	@Column(name = "TipoMaterial")
	private String tipomaterial;
	@Column(name = "TipoEmbarcacao")
	private String tipoembarcacao;
	@Column(name = "PosicaoMotor")
	private String posicaomotor;
	@Column(name = "QuantMotor")
	private String quantmotor;
	@Column(name = "PotenciaMotor")
	private String potenciamotor;
	@Column(name = "TipoCombustivel")
	private String tipocombustivel;
	@Column(name = "CapacidadeIndicada")
	private String capacidadeindicada;
	@Column(name = "CapacidadeInformada")
	private String capacidadeinformada;
	@Column(name = "SituacaoEmbarcacao")
	private String situacaoembarcacao;
	@Column(name = "EmbarcacaoReserva")
	private String embarcacaoreserva;
	@Column(name = "PropriedadeEmbarcacao")
	private String propriedadeembarcacao;
	@Column(name = "PropriedadeOutros")
	private String propriedadeoutros;
	@Column(name = "ValorEmbarcacao")
	private String valorembarcacao;
	@Column(name = "DataAquisicao")
	private String dataaquisicao;
	@Column(name = "TempoChuva")
	private String tempochuva;
	@Column(name = "TempoSeca")
	private String temposeca;
	@Column(name = "MesLetivoChuva")
	private String mesletivochuva;
	@Column(name = "MesLetivoSeca")
	private String mesletivoseca;
	@Column(name = "QuantidadeRota")
	private String quantidaderota;
	@Column(name = "RotaOD")
	private String rotaod;
	@Column(name = "RotaOD1")
	private String rotaOD1;
	@Column(name = "RotaOD2")
	private String rotaOD2;
	@Column(name = "AlunosMatutino")
	private String alunosmatutino;
	@Column(name = "AlunosVespertino")
	private String alunosvespertino;
	@Column(name = "AlunosNoturno")
	private String alunosnoturno;
	@Column(name = "ValorCusto")
	private String valorcusto;
	@Column(name = "ValorUnidade")
	private String valorunidade;
	@Column(name = "Observacao")
	private String observacao;

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
    	return "idEmbarcacao";
    }
    
    @Override
    public String getIndexId() {
    	return getIdFormulario()+"#"+getIdEmbarcacao();
    }
    
	public String getIdFormulario() {
		return idFormulario;
	}

	public void setIdFormulario(String idFormulario) {
		this.idFormulario = idFormulario;
	}

	public String getIdEmbarcacao() {
		return idEmbarcacao;
	}

	public void setIdEmbarcacao(String idEmbarcacao) {
		this.idEmbarcacao = idEmbarcacao;
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

	public String getRotaOD1() {
		return rotaOD1;
	}

	public void setRotaOD1(String rotaOD1) {
		this.rotaOD1 = rotaOD1;
	}

	public String getRotaOD2() {
		return rotaOD2;
	}

	public void setRotaOD2(String rotaOD2) {
		this.rotaOD2 = rotaOD2;
	}

	public String getObservacao() {
		return observacao;
	}

	public void setObservacao(String observacao) {
		this.observacao = observacao;
	}

}