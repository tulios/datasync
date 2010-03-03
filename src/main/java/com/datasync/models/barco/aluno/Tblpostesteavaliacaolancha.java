package com.datasync.models.barco.aluno;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;

import com.datasync.models.IndexableEntity;

@Entity
@Table(name = "tblPosTesteAvaliacaoLancha")
@SuppressWarnings("serial")
public class Tblpostesteavaliacaolancha extends IndexableEntity{

    @Id
    @Column(name = "IdFormulario")
    private String idformulario;
    @Column(name = "Seguranca")
    private Integer seguranca;
    @Column(name = "Tamanho")
    private Integer tamanho;
    @Column(name = "Aparencia")
    private Integer aparencia;
    @Column(name = "ProtecaoSolChuva")
    private Integer protecaosolchuva;
    @Column(name = "TempoViagem")
    private Integer tempoviagem;

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

    public void setSeguranca(Integer seguranca){
        this.seguranca = seguranca;
    }

    public Integer getSeguranca(){
        return seguranca;
    }

    public void setTamanho(Integer tamanho){
        this.tamanho = tamanho;
    }

    public Integer getTamanho(){
        return tamanho;
    }

    public void setAparencia(Integer aparencia){
        this.aparencia = aparencia;
    }

    public Integer getAparencia(){
        return aparencia;
    }

    public void setProtecaosolchuva(Integer protecaosolchuva){
        this.protecaosolchuva = protecaosolchuva;
    }

    public Integer getProtecaosolchuva(){
        return protecaosolchuva;
    }

    public void setTempoviagem(Integer tempoviagem){
        this.tempoviagem = tempoviagem;
    }

    public Integer getTempoviagem(){
        return tempoviagem;
    }


}
