package com.datasync.models.bicicleta.aluno;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;

import com.datasync.models.IndexableEntity;

@Entity
@Table(name = "tblInformacaoBicicleta")
@SuppressWarnings("serial")
public class Tblinformacaobicicleta extends IndexableEntity{

    @Id
    @Column(name = "IdFormulario")
    private String idformulario;
    @Column(name = "TempoDeslocamento")
    private Integer tempodeslocamento;
    @Column(name = "DarCarona")
    private String darcarona;
    @Column(name = "PegarCarona")
    private String pegarcarona;
    @Column(name = "UtilizaTranca")
    private Integer utilizatranca;
    @Column(name = "FrequenciaManutencaoBicicleta")
    private Integer frequenciamanutencaobicicleta;
    @Column(name = "ReparoBicicleta")
    private Integer reparobicicleta;

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

    public void setTempodeslocamento(Integer tempodeslocamento){
        this.tempodeslocamento = tempodeslocamento;
    }

    public Integer getTempodeslocamento(){
        return tempodeslocamento;
    }

    public void setDarcarona(String darcarona){
        this.darcarona = darcarona;
    }

    public String getDarcarona(){
        return darcarona;
    }

    public void setPegarcarona(String pegarcarona){
        this.pegarcarona = pegarcarona;
    }

    public String getPegarcarona(){
        return pegarcarona;
    }

    public void setUtilizatranca(Integer utilizatranca){
        this.utilizatranca = utilizatranca;
    }

    public Integer getUtilizatranca(){
        return utilizatranca;
    }

    public void setFrequenciamanutencaobicicleta(Integer frequenciamanutencaobicicleta){
        this.frequenciamanutencaobicicleta = frequenciamanutencaobicicleta;
    }

    public Integer getFrequenciamanutencaobicicleta(){
        return frequenciamanutencaobicicleta;
    }

    public void setReparobicicleta(Integer reparobicicleta){
        this.reparobicicleta = reparobicicleta;
    }

    public Integer getReparobicicleta(){
        return reparobicicleta;
    }


}
