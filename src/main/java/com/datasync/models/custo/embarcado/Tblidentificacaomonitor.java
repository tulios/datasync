package com.datasync.models.custo.embarcado;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;

import com.datasync.models.IndexableEntity;

@Entity
@Table(name = "tblIdentificacaoMonitor")
@SuppressWarnings("serial")
public class Tblidentificacaomonitor extends IndexableEntity{

    @Id
    @Column(name = "IdFormulario")
    private String idformulario;
    @Column(name = "PossuiMonitor")
    private String possuimonitor;
    @Column(name = "Nome")
    private String nome;
    @Column(name = "RG")
    private String rg;
    @Column(name = "ConsumoQuantidade")
    private double consumoquantidade;
    @Column(name = "ConsumoUnidade")
    private double consumounidade;
    @Column(name = "Observacao")
    private String observacao;

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

    public void setPossuimonitor(String possuimonitor){
        this.possuimonitor = possuimonitor;
    }

    public String getPossuimonitor(){
        return possuimonitor;
    }

    public void setNome(String nome){
        this.nome = nome;
    }

    public String getNome(){
        return nome;
    }

    public void setRg(String rg){
        this.rg = rg;
    }

    public String getRg(){
        return rg;
    }

    public void setConsumoquantidade(double consumoquantidade){
        this.consumoquantidade = consumoquantidade;
    }

    public double getConsumoquantidade(){
        return consumoquantidade;
    }

    public void setConsumounidade(double consumounidade){
        this.consumounidade = consumounidade;
    }

    public double getConsumounidade(){
        return consumounidade;
    }

    public void setObservacao(String observacao){
        this.observacao = observacao;
    }

    public String getObservacao(){
        return observacao;
    }


}
