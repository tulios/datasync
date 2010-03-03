package com.datasync.models.barco.prefeito;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;

import com.datasync.models.IndexableEntity;

import java.sql.Timestamp;

@Entity
@Table(name = "tblInformacaoPrefeito")
@SuppressWarnings("serial")
public class Tblinformacaoprefeito extends IndexableEntity{

    @Id
    @Column(name = "IdFormulario")
    private String idformulario;
    @Column(name = "QuantidadeSecretarioEducacao")
    private Integer quantidadesecretarioeducacao;
    @Column(name = "QuantidadeAcoes")
    private Integer quantidadeacoes;
    @Column(name = "QuantidadeBarco")
    private Integer quantidadebarco;

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

    public void setQuantidadesecretarioeducacao(Integer quantidadesecretarioeducacao){
        this.quantidadesecretarioeducacao = quantidadesecretarioeducacao;
    }

    public Integer getQuantidadesecretarioeducacao(){
        return quantidadesecretarioeducacao;
    }

    public void setQuantidadeacoes(Integer quantidadeacoes){
        this.quantidadeacoes = quantidadeacoes;
    }

    public Integer getQuantidadeacoes(){
        return quantidadeacoes;
    }

    public void setQuantidadebarco(Integer quantidadebarco){
        this.quantidadebarco = quantidadebarco;
    }

    public Integer getQuantidadebarco(){
        return quantidadebarco;
    }


}
