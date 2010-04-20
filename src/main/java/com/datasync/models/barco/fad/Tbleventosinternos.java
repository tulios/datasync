package com.datasync.models.barco.fad;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;

import com.datasync.models.IndexableEntity;

@Entity
@Table(name = "tblEventosInternos")
@SuppressWarnings("serial")
public class Tbleventosinternos extends IndexableEntity{

    @Id
    @Column(name = "IdFormulario")
    private String idformulario;
    @Column(name = "QuantidadeMochilaCostas")
    private String quantidademochilacostas;
    @Column(name = "QuantidadeColo")
    private String quantidadecolo;
    @Column(name = "QuantidadeChao")
    private String quantidadechao;
    @Column(name = "QualLocal")
    private String quallocal;
    @Column(name = "Escorregao")
    private String escorregao;
    @Column(name = "EmbarqueDeficiente")
    private String embarquedeficiente;
    @Column(name = "QualDeficiencia")
    private String qualdeficiencia;
    @Column(name = "ObservacaoEmbarque")
    private String observacaoembarque;
    @Column(name = "Foto1")
    private String foto1;
    @Column(name = "Foto2")
    private String foto2;
    @Column(name = "Foto3")
    private String foto3;
    @Column(name = "PossuiMaterial")
    private String possuimaterial;

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

    public void setQuantidademochilacostas(String quantidademochilacostas){
        this.quantidademochilacostas = quantidademochilacostas;
    }

    public String getQuantidademochilacostas(){
        return quantidademochilacostas;
    }

    public void setQuantidadecolo(String quantidadecolo){
        this.quantidadecolo = quantidadecolo;
    }

    public String getQuantidadecolo(){
        return quantidadecolo;
    }

    public void setQuantidadechao(String quantidadechao){
        this.quantidadechao = quantidadechao;
    }

    public String getQuantidadechao(){
        return quantidadechao;
    }

    public void setQuallocal(String quallocal){
        this.quallocal = quallocal;
    }

    public String getQuallocal(){
        return quallocal;
    }

    public void setEscorregao(String escorregao){
        this.escorregao = escorregao;
    }

    public String getEscorregao(){
        return escorregao;
    }

    public void setEmbarquedeficiente(String embarquedeficiente){
        this.embarquedeficiente = embarquedeficiente;
    }

    public String getEmbarquedeficiente(){
        return embarquedeficiente;
    }

    public void setQualdeficiencia(String qualdeficiencia){
        this.qualdeficiencia = qualdeficiencia;
    }

    public String getQualdeficiencia(){
        return qualdeficiencia;
    }

    public void setObservacaoembarque(String observacaoembarque){
        this.observacaoembarque = observacaoembarque;
    }

    public String getObservacaoembarque(){
        return observacaoembarque;
    }

    public void setFoto1(String foto1){
        this.foto1 = foto1;
    }

    public String getFoto1(){
        return foto1;
    }

    public void setFoto2(String foto2){
        this.foto2 = foto2;
    }

    public String getFoto2(){
        return foto2;
    }

    public void setFoto3(String foto3){
        this.foto3 = foto3;
    }

    public String getFoto3(){
        return foto3;
    }

    public void setPossuimaterial(String possuimaterial){
        this.possuimaterial = possuimaterial;
    }

    public String getPossuimaterial(){
        return possuimaterial;
    }


}
