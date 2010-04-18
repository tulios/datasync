package com.datasync.models.barco.embarcacao;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;

import com.datasync.models.IndexableEntity;

@Entity
@Table(name = "tblImagensEmbarcacao")
@SuppressWarnings("serial")
public class Tblimagensembarcacao extends IndexableEntity{

    @Id
    @Column(name = "IdFormulario")
    private String idformulario;
    @Column(name = "VistaFrontal")
    private String vistafrontal;
    @Column(name = "VistaLateralEsq")
    private String vistalateralesq;
    @Column(name = "VistaLateralDir")
    private String vistalateraldir;
    @Column(name = "VistaTraseira")
    private String vistatraseira;
    @Column(name = "CabineGeral")
    private String cabinegeral;
    @Column(name = "CabineLeme")
    private String cabineleme;
    @Column(name = "CabineAssento")
    private String cabineassento;
    @Column(name = "CabineFiacao")
    private String cabinefiacao;
    @Column(name = "MotorFoto1")
    private String motorfoto1;
    @Column(name = "MotorFoto2")
    private String motorfoto2;
    @Column(name = "MotorFoto3")
    private String motorfoto3;
    @Column(name = "MotorFoto4")
    private String motorfoto4;
    @Column(name = "EntradaFoto1")
    private String entradafoto1;
    @Column(name = "EntradaFoto2")
    private String entradafoto2;
    @Column(name = "CoberturaFoto1")
    private String coberturafoto1;
    @Column(name = "CoberturaFoto2")
    private String coberturafoto2;
    @Column(name = "PisoFoto1")
    private String pisofoto1;
    @Column(name = "PisoFoto2")
    private String pisofoto2;
    @Column(name = "AssentoFoto1")
    private String assentofoto1;
    @Column(name = "AssentoFoto2")
    private String assentofoto2;
    @Column(name = "FiacaoFoto1")
    private String fiacaofoto1;
    @Column(name = "FiacaoFoto2")
    private String fiacaofoto2;
    @Column(name = "ItensFoto1")
    private String itensfoto1;
    @Column(name = "ItensFoto2")
    private String itensfoto2;
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

    public void setVistafrontal(String vistafrontal){
        this.vistafrontal = vistafrontal;
    }

    public String getVistafrontal(){
        return vistafrontal;
    }

    public void setVistalateralesq(String vistalateralesq){
        this.vistalateralesq = vistalateralesq;
    }

    public String getVistalateralesq(){
        return vistalateralesq;
    }

    public void setVistalateraldir(String vistalateraldir){
        this.vistalateraldir = vistalateraldir;
    }

    public String getVistalateraldir(){
        return vistalateraldir;
    }

    public void setVistatraseira(String vistatraseira){
        this.vistatraseira = vistatraseira;
    }

    public String getVistatraseira(){
        return vistatraseira;
    }

    public void setCabinegeral(String cabinegeral){
        this.cabinegeral = cabinegeral;
    }

    public String getCabinegeral(){
        return cabinegeral;
    }

    public void setCabineleme(String cabineleme){
        this.cabineleme = cabineleme;
    }

    public String getCabineleme(){
        return cabineleme;
    }

    public void setCabineassento(String cabineassento){
        this.cabineassento = cabineassento;
    }

    public String getCabineassento(){
        return cabineassento;
    }

    public void setCabinefiacao(String cabinefiacao){
        this.cabinefiacao = cabinefiacao;
    }

    public String getCabinefiacao(){
        return cabinefiacao;
    }

    public void setMotorfoto1(String motorfoto1){
        this.motorfoto1 = motorfoto1;
    }

    public String getMotorfoto1(){
        return motorfoto1;
    }

    public void setMotorfoto2(String motorfoto2){
        this.motorfoto2 = motorfoto2;
    }

    public String getMotorfoto2(){
        return motorfoto2;
    }

    public void setMotorfoto3(String motorfoto3){
        this.motorfoto3 = motorfoto3;
    }

    public String getMotorfoto3(){
        return motorfoto3;
    }

    public void setMotorfoto4(String motorfoto4){
        this.motorfoto4 = motorfoto4;
    }

    public String getMotorfoto4(){
        return motorfoto4;
    }

    public void setEntradafoto1(String entradafoto1){
        this.entradafoto1 = entradafoto1;
    }

    public String getEntradafoto1(){
        return entradafoto1;
    }

    public void setEntradafoto2(String entradafoto2){
        this.entradafoto2 = entradafoto2;
    }

    public String getEntradafoto2(){
        return entradafoto2;
    }

    public void setCoberturafoto1(String coberturafoto1){
        this.coberturafoto1 = coberturafoto1;
    }

    public String getCoberturafoto1(){
        return coberturafoto1;
    }

    public void setCoberturafoto2(String coberturafoto2){
        this.coberturafoto2 = coberturafoto2;
    }

    public String getCoberturafoto2(){
        return coberturafoto2;
    }

    public void setPisofoto1(String pisofoto1){
        this.pisofoto1 = pisofoto1;
    }

    public String getPisofoto1(){
        return pisofoto1;
    }

    public void setPisofoto2(String pisofoto2){
        this.pisofoto2 = pisofoto2;
    }

    public String getPisofoto2(){
        return pisofoto2;
    }

    public void setAssentofoto1(String assentofoto1){
        this.assentofoto1 = assentofoto1;
    }

    public String getAssentofoto1(){
        return assentofoto1;
    }

    public void setAssentofoto2(String assentofoto2){
        this.assentofoto2 = assentofoto2;
    }

    public String getAssentofoto2(){
        return assentofoto2;
    }

    public void setFiacaofoto1(String fiacaofoto1){
        this.fiacaofoto1 = fiacaofoto1;
    }

    public String getFiacaofoto1(){
        return fiacaofoto1;
    }

    public void setFiacaofoto2(String fiacaofoto2){
        this.fiacaofoto2 = fiacaofoto2;
    }

    public String getFiacaofoto2(){
        return fiacaofoto2;
    }

    public void setItensfoto1(String itensfoto1){
        this.itensfoto1 = itensfoto1;
    }

    public String getItensfoto1(){
        return itensfoto1;
    }

    public void setItensfoto2(String itensfoto2){
        this.itensfoto2 = itensfoto2;
    }

    public String getItensfoto2(){
        return itensfoto2;
    }

    public void setObservacao(String observacao){
        this.observacao = observacao;
    }

    public String getObservacao(){
        return observacao;
    }


}
