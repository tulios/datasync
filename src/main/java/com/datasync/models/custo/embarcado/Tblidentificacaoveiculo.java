package com.datasync.models.custo.embarcado;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;

import com.datasync.models.IndexableEntity;

@Entity
@Table(name = "tblIdentificacaoVeiculo")
@SuppressWarnings("serial")
public class Tblidentificacaoveiculo extends IndexableEntity{

    @Id
    @Column(name = "IdFormulario")
    private String idformulario;
    @Column(name = "NumeroEmbarcacao")
    private Integer numeroembarcacao;
    @Column(name = "Nome")
    private String nome;
    @Column(name = "NomePopular")
    private String nomepopular;
    @Column(name = "Foto1")
    private String foto1;
    @Column(name = "UltimaFoto")
    private String ultimafoto;
    @Column(name = "IdEmbarcacao")
    private String idembarcacao;

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

    public void setNumeroembarcacao(Integer numeroembarcacao){
        this.numeroembarcacao = numeroembarcacao;
    }

    public Integer getNumeroembarcacao(){
        return numeroembarcacao;
    }

    public void setNome(String nome){
        this.nome = nome;
    }

    public String getNome(){
        return nome;
    }

    public void setNomepopular(String nomepopular){
        this.nomepopular = nomepopular;
    }

    public String getNomepopular(){
        return nomepopular;
    }

    public void setFoto1(String foto1){
        this.foto1 = foto1;
    }

    public String getFoto1(){
        return foto1;
    }

    public void setUltimafoto(String ultimafoto){
        this.ultimafoto = ultimafoto;
    }

    public String getUltimafoto(){
        return ultimafoto;
    }

    public void setIdembarcacao(String idembarcacao){
        this.idembarcacao = idembarcacao;
    }

    public String getIdembarcacao(){
        return idembarcacao;
    }


}
