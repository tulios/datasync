package com.datasync.models.bicicleta.alunoSemBike;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;

import com.datasync.models.IndexableEntity;

@Entity
@Table(name = "tblInformacaoNaoBicicleta")
@SuppressWarnings("serial")
public class Tblinformacaonaobicicleta extends IndexableEntity{

    @Id
    @Column(name = "IdFormulario")
    private String idformulario;
    @Column(name = "BicicletaMudaria")
    private Integer bicicletamudaria;
    @Column(name = "PorqueMudaria")
    private String porquemudaria;
    @Column(name = "NivelSatisfacaoBicicleta")
    private Integer nivelsatisfacaobicicleta;
    @Column(name = "QualOutroNivelSatisfacaoBicicleta")
    private String qualoutronivelsatisfacaobicicleta;
    @Column(name = "Responsavel")
    private String responsavel;
    @Column(name = "Observacoes")
    private String observacoes;

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

    public void setBicicletamudaria(Integer bicicletamudaria){
        this.bicicletamudaria = bicicletamudaria;
    }

    public Integer getBicicletamudaria(){
        return bicicletamudaria;
    }

    public void setPorquemudaria(String porquemudaria){
        this.porquemudaria = porquemudaria;
    }

    public String getPorquemudaria(){
        return porquemudaria;
    }

    public void setNivelsatisfacaobicicleta(Integer nivelsatisfacaobicicleta){
        this.nivelsatisfacaobicicleta = nivelsatisfacaobicicleta;
    }

    public Integer getNivelsatisfacaobicicleta(){
        return nivelsatisfacaobicicleta;
    }

    public void setQualoutronivelsatisfacaobicicleta(String qualoutronivelsatisfacaobicicleta){
        this.qualoutronivelsatisfacaobicicleta = qualoutronivelsatisfacaobicicleta;
    }

    public String getQualoutronivelsatisfacaobicicleta(){
        return qualoutronivelsatisfacaobicicleta;
    }

    public void setResponsavel(String responsavel){
        this.responsavel = responsavel;
    }

    public String getResponsavel(){
        return responsavel;
    }

    public void setObservacoes(String observacoes){
        this.observacoes = observacoes;
    }

    public String getObservacoes(){
        return observacoes;
    }


}
