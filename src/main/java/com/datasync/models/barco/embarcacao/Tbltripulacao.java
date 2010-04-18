package com.datasync.models.barco.embarcacao;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;

import com.datasync.models.IndexableEntity;

@Entity
@Table(name = "tblTripulacao")
@SuppressWarnings("serial")
public class Tbltripulacao extends IndexableEntity{

    @Id
    @Column(name = "IdFormulario")
    private String idformulario;
    @Column(name = "PossuiBoias")
    private String possuiboias;
    @Column(name = "QuantasBoias")
    private Integer quantasboias;
    @Column(name = "PossuiColetes")
    private String possuicoletes;
    @Column(name = "QuantosColetes")
    private Integer quantoscoletes;
    @Column(name = "PossuiJanelas")
    private String possuijanelas;
    @Column(name = "QuantasJanelas")
    private Integer quantasjanelas;
    @Column(name = "PossuiSafenas")
    private String possuisafenas;
    @Column(name = "ProtecaoMotor")
    private String protecaomotor;
    @Column(name = "PossuiGuardaCorpo")
    private String possuiguardacorpo;
    @Column(name = "PossuiBaterias")
    private String possuibaterias;
    @Column(name = "PossuiCarregadorBateria")
    private String possuicarregadorbateria;
    @Column(name = "PossuiPartidaEletrica")
    private String possuipartidaeletrica;

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

    public void setPossuiboias(String possuiboias){
        this.possuiboias = possuiboias;
    }

    public String getPossuiboias(){
        return possuiboias;
    }

    public void setQuantasboias(Integer quantasboias){
        this.quantasboias = quantasboias;
    }

    public Integer getQuantasboias(){
        return quantasboias;
    }

    public void setPossuicoletes(String possuicoletes){
        this.possuicoletes = possuicoletes;
    }

    public String getPossuicoletes(){
        return possuicoletes;
    }

    public void setQuantoscoletes(Integer quantoscoletes){
        this.quantoscoletes = quantoscoletes;
    }

    public Integer getQuantoscoletes(){
        return quantoscoletes;
    }

    public void setPossuijanelas(String possuijanelas){
        this.possuijanelas = possuijanelas;
    }

    public String getPossuijanelas(){
        return possuijanelas;
    }

    public void setQuantasjanelas(Integer quantasjanelas){
        this.quantasjanelas = quantasjanelas;
    }

    public Integer getQuantasjanelas(){
        return quantasjanelas;
    }

    public void setPossuisafenas(String possuisafenas){
        this.possuisafenas = possuisafenas;
    }

    public String getPossuisafenas(){
        return possuisafenas;
    }

    public void setProtecaomotor(String protecaomotor){
        this.protecaomotor = protecaomotor;
    }

    public String getProtecaomotor(){
        return protecaomotor;
    }

    public void setPossuiguardacorpo(String possuiguardacorpo){
        this.possuiguardacorpo = possuiguardacorpo;
    }

    public String getPossuiguardacorpo(){
        return possuiguardacorpo;
    }

    public void setPossuibaterias(String possuibaterias){
        this.possuibaterias = possuibaterias;
    }

    public String getPossuibaterias(){
        return possuibaterias;
    }

    public void setPossuicarregadorbateria(String possuicarregadorbateria){
        this.possuicarregadorbateria = possuicarregadorbateria;
    }

    public String getPossuicarregadorbateria(){
        return possuicarregadorbateria;
    }

    public void setPossuipartidaeletrica(String possuipartidaeletrica){
        this.possuipartidaeletrica = possuipartidaeletrica;
    }

    public String getPossuipartidaeletrica(){
        return possuipartidaeletrica;
    }


}
