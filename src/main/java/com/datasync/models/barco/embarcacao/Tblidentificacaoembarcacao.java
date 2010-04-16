package com.datasync.models.barco.embarcacao;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;

import com.datasync.models.IndexableEntity;

@Entity
@Table(name = "tblIdentificacaoEmbarcacao")
@SuppressWarnings("serial")
public class Tblidentificacaoembarcacao extends IndexableEntity{

    @Id
    @Column(name = "IdFormulario")
    private String idformulario;
    @Column(name = "PossuiIdentificacao")
    private String possuiidentificacao;
    @Column(name = "NomeEmbarcacao")
    private String nomeembarcacao;
    @Column(name = "AnoEmbarcacao")
    private Integer anoembarcacao;
    @Column(name = "TipoEmbarcacao")
    private Integer tipoembarcacao;
    @Column(name = "QuaisOutrosTipos")
    private String quaisoutrostipos;
    @Column(name = "NomePopular")
    private String nomepopular;
    @Column(name = "PossuiInscricao")
    private String possuiinscricao;
    @Column(name = "PossuiRegistro")
    private String possuiregistro;
    @Column(name = "NumeroRegistro")
    private String numeroregistro;
    @Column(name = "LocalRegistro")
    private String localregistro;
    @Column(name = "AtividadeEmbarcacao")
    private String atividadeembarcacao;
    @Column(name = "CapacidadePassageiros")
    private Integer capacidadepassageiros;
    @Column(name = "CaladoLeve")
    private String caladoleve;
    @Column(name = "CaladoCarregado")
    private String caladocarregado;
    @Column(name = "ArqueacaoLiquida")
    private String arqueacaoliquida;
    @Column(name = "ArqueacaoBruta")
    private String arqueacaobruta;
    @Column(name = "PorteBruto")
    private String portebruto;

    @Override
    public String getIdColumnName() {
        return "idformulario";
    }

    @Override
    public String getIndexId() {
        return getIdformulario();
    }

    public void setIdformulario(String idformulario){
        this.idformulario = idformulario;
    }

    public String getIdformulario(){
        return idformulario;
    }

    public void setPossuiidentificacao(String possuiidentificacao){
        this.possuiidentificacao = possuiidentificacao;
    }

    public String getPossuiidentificacao(){
        return possuiidentificacao;
    }

    public void setNomeembarcacao(String nomeembarcacao){
        this.nomeembarcacao = nomeembarcacao;
    }

    public String getNomeembarcacao(){
        return nomeembarcacao;
    }

    public void setAnoembarcacao(Integer anoembarcacao){
        this.anoembarcacao = anoembarcacao;
    }

    public Integer getAnoembarcacao(){
        return anoembarcacao;
    }

    public void setTipoembarcacao(Integer tipoembarcacao){
        this.tipoembarcacao = tipoembarcacao;
    }

    public Integer getTipoembarcacao(){
        return tipoembarcacao;
    }

    public void setQuaisoutrostipos(String quaisoutrostipos){
        this.quaisoutrostipos = quaisoutrostipos;
    }

    public String getQuaisoutrostipos(){
        return quaisoutrostipos;
    }

    public void setNomepopular(String nomepopular){
        this.nomepopular = nomepopular;
    }

    public String getNomepopular(){
        return nomepopular;
    }

    public void setPossuiinscricao(String possuiinscricao){
        this.possuiinscricao = possuiinscricao;
    }

    public String getPossuiinscricao(){
        return possuiinscricao;
    }

    public void setPossuiregistro(String possuiregistro){
        this.possuiregistro = possuiregistro;
    }

    public String getPossuiregistro(){
        return possuiregistro;
    }

    public void setNumeroregistro(String numeroregistro){
        this.numeroregistro = numeroregistro;
    }

    public String getNumeroregistro(){
        return numeroregistro;
    }

    public void setLocalregistro(String localregistro){
        this.localregistro = localregistro;
    }

    public String getLocalregistro(){
        return localregistro;
    }

    public void setAtividadeembarcacao(String atividadeembarcacao){
        this.atividadeembarcacao = atividadeembarcacao;
    }

    public String getAtividadeembarcacao(){
        return atividadeembarcacao;
    }

    public void setCapacidadepassageiros(Integer capacidadepassageiros){
        this.capacidadepassageiros = capacidadepassageiros;
    }

    public Integer getCapacidadepassageiros(){
        return capacidadepassageiros;
    }

    public void setCaladoleve(String caladoleve){
        this.caladoleve = caladoleve;
    }

    public String getCaladoleve(){
        return caladoleve;
    }

    public void setCaladocarregado(String caladocarregado){
        this.caladocarregado = caladocarregado;
    }

    public String getCaladocarregado(){
        return caladocarregado;
    }

    public void setArqueacaoliquida(String arqueacaoliquida){
        this.arqueacaoliquida = arqueacaoliquida;
    }

    public String getArqueacaoliquida(){
        return arqueacaoliquida;
    }

    public void setArqueacaobruta(String arqueacaobruta){
        this.arqueacaobruta = arqueacaobruta;
    }

    public String getArqueacaobruta(){
        return arqueacaobruta;
    }

    public void setPortebruto(String portebruto){
        this.portebruto = portebruto;
    }

    public String getPortebruto(){
        return portebruto;
    }


}
