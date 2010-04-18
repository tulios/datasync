package com.datasync.models.barco.embarcacao;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;

import com.datasync.models.IndexableEntity;

@Entity
@Table(name = "tblDimensaoEmbarcacao")
@SuppressWarnings("serial")
public class Tbldimensaoembarcacao extends IndexableEntity{

    @Id
    @Column(name = "IdFormulario")
    private String idformulario;
    @Column(name = "ComprimentoTotal")
    private String comprimentototal;
    @Column(name = "Boca")
    private String boca;
    @Column(name = "Pontal")
    private String pontal;
    @Column(name = "BordaLivreBB")
    private String bordalivrebb;
    @Column(name = "BordaLivreBE")
    private String bordalivrebe;
    @Column(name = "ComprimentoAssento")
    private String comprimentoassento;

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

    public void setComprimentototal(String comprimentototal){
        this.comprimentototal = comprimentototal;
    }

    public String getComprimentototal(){
        return comprimentototal;
    }

    public void setBoca(String boca){
        this.boca = boca;
    }

    public String getBoca(){
        return boca;
    }

    public void setPontal(String pontal){
        this.pontal = pontal;
    }

    public String getPontal(){
        return pontal;
    }

    public void setBordalivrebb(String bordalivrebb){
        this.bordalivrebb = bordalivrebb;
    }

    public String getBordalivrebb(){
        return bordalivrebb;
    }

    public void setBordalivrebe(String bordalivrebe){
        this.bordalivrebe = bordalivrebe;
    }

    public String getBordalivrebe(){
        return bordalivrebe;
    }

    public void setComprimentoassento(String comprimentoassento){
        this.comprimentoassento = comprimentoassento;
    }

    public String getComprimentoassento(){
        return comprimentoassento;
    }


}
