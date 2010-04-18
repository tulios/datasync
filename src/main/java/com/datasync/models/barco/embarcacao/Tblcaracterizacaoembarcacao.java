package com.datasync.models.barco.embarcacao;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;

import com.datasync.models.IndexableEntity;

@Entity
@Table(name = "tblCaracterizacaoEmbarcacao")
@SuppressWarnings("serial")
public class Tblcaracterizacaoembarcacao extends IndexableEntity{

    @Id
    @Column(name = "IdFormulario")
    private String idformulario;
    @Column(name = "TipoPropulsao")
    private Integer tipopropulsao;
    @Column(name = "QuaisOutrasPropulsao")
    private String quaisoutraspropulsao;
    @Column(name = "QuantidadeMotores")
    private Integer quantidademotores;
    @Column(name = "SabePotenciaMotor1")
    private String sabepotenciamotor1;
    @Column(name = "SabePotenciaMotor2")
    private String sabepotenciamotor2;
    @Column(name = "SabePotenciaMotor3")
    private String sabepotenciamotor3;
    @Column(name = "PotenciaMotor1")
    private String potenciamotor1;
    @Column(name = "MarcaMotor1")
    private String marcamotor1;
    @Column(name = "ModeloMotor1")
    private String modelomotor1;
    @Column(name = "PotenciaMotor2")
    private String potenciamotor2;
    @Column(name = "MarcaMotor2")
    private String marcamotor2;
    @Column(name = "ModeloMotor2")
    private String modelomotor2;
    @Column(name = "PotenciaMotor3")
    private String potenciamotor3;
    @Column(name = "MarcaMotor3")
    private String marcamotor3;
    @Column(name = "ModeloMotor3")
    private String modelomotor3;
    @Column(name = "PossuiReverso")
    private String possuireverso;
    @Column(name = "MarcaReverso")
    private String marcareverso;
    @Column(name = "RelacaoReverso")
    private String relacaoreverso;
    @Column(name = "ComandoMotor")
    private Integer comandomotor;
    @Column(name = "QuaisOutrosComandos")
    private String quaisoutroscomandos;
    @Column(name = "SabeLitros1")
    private String sabelitros1;
    @Column(name = "QuantidadeLitros1")
    private String quantidadelitros1;
    @Column(name = "SabeLitros2")
    private String sabelitros2;
    @Column(name = "QuantidadeLitros2")
    private String quantidadelitros2;
    @Column(name = "SabeLitros3")
    private String sabelitros3;
    @Column(name = "QuantidadeLitros3")
    private String quantidadelitros3;
    @Column(name = "PosicaoComando")
    private Integer posicaocomando;

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

    public void setTipopropulsao(Integer tipopropulsao){
        this.tipopropulsao = tipopropulsao;
    }

    public Integer getTipopropulsao(){
        return tipopropulsao;
    }

    public void setQuaisoutraspropulsao(String quaisoutraspropulsao){
        this.quaisoutraspropulsao = quaisoutraspropulsao;
    }

    public String getQuaisoutraspropulsao(){
        return quaisoutraspropulsao;
    }

    public void setQuantidademotores(Integer quantidademotores){
        this.quantidademotores = quantidademotores;
    }

    public Integer getQuantidademotores(){
        return quantidademotores;
    }

    public void setSabepotenciamotor1(String sabepotenciamotor1){
        this.sabepotenciamotor1 = sabepotenciamotor1;
    }

    public String getSabepotenciamotor1(){
        return sabepotenciamotor1;
    }

    public void setSabepotenciamotor2(String sabepotenciamotor2){
        this.sabepotenciamotor2 = sabepotenciamotor2;
    }

    public String getSabepotenciamotor2(){
        return sabepotenciamotor2;
    }

    public void setSabepotenciamotor3(String sabepotenciamotor3){
        this.sabepotenciamotor3 = sabepotenciamotor3;
    }

    public String getSabepotenciamotor3(){
        return sabepotenciamotor3;
    }

    public void setPotenciamotor1(String potenciamotor1){
        this.potenciamotor1 = potenciamotor1;
    }

    public String getPotenciamotor1(){
        return potenciamotor1;
    }

    public void setMarcamotor1(String marcamotor1){
        this.marcamotor1 = marcamotor1;
    }

    public String getMarcamotor1(){
        return marcamotor1;
    }

    public void setModelomotor1(String modelomotor1){
        this.modelomotor1 = modelomotor1;
    }

    public String getModelomotor1(){
        return modelomotor1;
    }

    public void setPotenciamotor2(String potenciamotor2){
        this.potenciamotor2 = potenciamotor2;
    }

    public String getPotenciamotor2(){
        return potenciamotor2;
    }

    public void setMarcamotor2(String marcamotor2){
        this.marcamotor2 = marcamotor2;
    }

    public String getMarcamotor2(){
        return marcamotor2;
    }

    public void setModelomotor2(String modelomotor2){
        this.modelomotor2 = modelomotor2;
    }

    public String getModelomotor2(){
        return modelomotor2;
    }

    public void setPotenciamotor3(String potenciamotor3){
        this.potenciamotor3 = potenciamotor3;
    }

    public String getPotenciamotor3(){
        return potenciamotor3;
    }

    public void setMarcamotor3(String marcamotor3){
        this.marcamotor3 = marcamotor3;
    }

    public String getMarcamotor3(){
        return marcamotor3;
    }

    public void setModelomotor3(String modelomotor3){
        this.modelomotor3 = modelomotor3;
    }

    public String getModelomotor3(){
        return modelomotor3;
    }

    public void setPossuireverso(String possuireverso){
        this.possuireverso = possuireverso;
    }

    public String getPossuireverso(){
        return possuireverso;
    }

    public void setMarcareverso(String marcareverso){
        this.marcareverso = marcareverso;
    }

    public String getMarcareverso(){
        return marcareverso;
    }

    public void setRelacaoreverso(String relacaoreverso){
        this.relacaoreverso = relacaoreverso;
    }

    public String getRelacaoreverso(){
        return relacaoreverso;
    }

    public void setComandomotor(Integer comandomotor){
        this.comandomotor = comandomotor;
    }

    public Integer getComandomotor(){
        return comandomotor;
    }

    public void setQuaisoutroscomandos(String quaisoutroscomandos){
        this.quaisoutroscomandos = quaisoutroscomandos;
    }

    public String getQuaisoutroscomandos(){
        return quaisoutroscomandos;
    }

    public void setSabelitros1(String sabelitros1){
        this.sabelitros1 = sabelitros1;
    }

    public String getSabelitros1(){
        return sabelitros1;
    }

    public void setQuantidadelitros1(String quantidadelitros1){
        this.quantidadelitros1 = quantidadelitros1;
    }

    public String getQuantidadelitros1(){
        return quantidadelitros1;
    }

    public void setSabelitros2(String sabelitros2){
        this.sabelitros2 = sabelitros2;
    }

    public String getSabelitros2(){
        return sabelitros2;
    }

    public void setQuantidadelitros2(String quantidadelitros2){
        this.quantidadelitros2 = quantidadelitros2;
    }

    public String getQuantidadelitros2(){
        return quantidadelitros2;
    }

    public void setSabelitros3(String sabelitros3){
        this.sabelitros3 = sabelitros3;
    }

    public String getSabelitros3(){
        return sabelitros3;
    }

    public void setQuantidadelitros3(String quantidadelitros3){
        this.quantidadelitros3 = quantidadelitros3;
    }

    public String getQuantidadelitros3(){
        return quantidadelitros3;
    }

    public void setPosicaocomando(Integer posicaocomando){
        this.posicaocomando = posicaocomando;
    }

    public Integer getPosicaocomando(){
        return posicaocomando;
    }


}
