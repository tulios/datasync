package com.datasync.models.barco.diretor;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;

import com.datasync.models.IndexableEntity;

@Entity
@Table(name = "tblCaracterizacaoDiretor")
@SuppressWarnings("serial")
public class Tblcaracterizacaodiretor extends IndexableEntity{

    @Id
    @Column(name = "IdFormulario")
    private String idformulario;
    @Column(name = "TempoExperienciaAno")
    private Integer tempoexperienciaano;
    @Column(name = "TempoExperienciaMes")
    private Integer tempoexperienciames;
    @Column(name = "TempoAtuacaoAno")
    private Integer tempoatuacaoano;
    @Column(name = "TempoAtuacaoMes")
    private Integer tempoatuacaomes;
    @Column(name = "QuantidadeEscola")
    private Integer quantidadeescola;

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

    public void setTempoexperienciaano(Integer tempoexperienciaano){
        this.tempoexperienciaano = tempoexperienciaano;
    }

    public Integer getTempoexperienciaano(){
        return tempoexperienciaano;
    }

    public void setTempoexperienciames(Integer tempoexperienciames){
        this.tempoexperienciames = tempoexperienciames;
    }

    public Integer getTempoexperienciames(){
        return tempoexperienciames;
    }

    public void setTempoatuacaoano(Integer tempoatuacaoano){
        this.tempoatuacaoano = tempoatuacaoano;
    }

    public Integer getTempoatuacaoano(){
        return tempoatuacaoano;
    }

    public void setTempoatuacaomes(Integer tempoatuacaomes){
        this.tempoatuacaomes = tempoatuacaomes;
    }

    public Integer getTempoatuacaomes(){
        return tempoatuacaomes;
    }

    public void setQuantidadeescola(Integer quantidadeescola){
        this.quantidadeescola = quantidadeescola;
    }

    public Integer getQuantidadeescola(){
        return quantidadeescola;
    }


}
