package com.datasync.models.barco.municipio;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;

import com.datasync.models.IndexableEntity;

@Entity
@Table(name = "tblPostoAbastecimento1")
@SuppressWarnings("serial")
public class Tblpostoabastecimento1 extends IndexableEntity{

    @Id
    @Column(name = "IdFormulario")
    private String idformulario;
    @Column(name = "Bandeira")
    private String bandeira;
    @Column(name = "Flutuante")
    private String flutuante;
    @Column(name = "Gasolina")
    private String gasolina;
    @Column(name = "Alcool")
    private String alcool;
    @Column(name = "Diesel")
    private String diesel;
    @Column(name = "Oleo2Tempos")
    private String oleo2tempos;
    @Column(name = "Oleo4Tempos")
    private String oleo4tempos;
    @Column(name = "FacilidadeGasolina")
    private String facilidadegasolina;
    @Column(name = "PorqueFacilidadeGasolina")
    private String porquefacilidadegasolina;
    @Column(name = "DeOndeVemGasolina")
    private String deondevemgasolina;
    @Column(name = "FacilidadeDiesel")
    private String facilidadediesel;
    @Column(name = "PorqueFacilidadeDiesel")
    private String porquefacilidadediesel;
    @Column(name = "DeOndeVemDiesel")
    private String deondevemdiesel;
    @Column(name = "FotoPosto1")
    private String fotoposto1;
    @Column(name = "FotoPosto2")
    private String fotoposto2;

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

    public void setBandeira(String bandeira){
        this.bandeira = bandeira;
    }

    public String getBandeira(){
        return bandeira;
    }

    public void setFlutuante(String flutuante){
        this.flutuante = flutuante;
    }

    public String getFlutuante(){
        return flutuante;
    }

    public void setGasolina(String gasolina){
        this.gasolina = gasolina;
    }

    public String getGasolina(){
        return gasolina;
    }

    public void setAlcool(String alcool){
        this.alcool = alcool;
    }

    public String getAlcool(){
        return alcool;
    }

    public void setDiesel(String diesel){
        this.diesel = diesel;
    }

    public String getDiesel(){
        return diesel;
    }

    public void setOleo2tempos(String oleo2tempos){
        this.oleo2tempos = oleo2tempos;
    }

    public String getOleo2tempos(){
        return oleo2tempos;
    }

    public void setOleo4tempos(String oleo4tempos){
        this.oleo4tempos = oleo4tempos;
    }

    public String getOleo4tempos(){
        return oleo4tempos;
    }

    public void setFacilidadegasolina(String facilidadegasolina){
        this.facilidadegasolina = facilidadegasolina;
    }

    public String getFacilidadegasolina(){
        return facilidadegasolina;
    }

    public void setPorquefacilidadegasolina(String porquefacilidadegasolina){
        this.porquefacilidadegasolina = porquefacilidadegasolina;
    }

    public String getPorquefacilidadegasolina(){
        return porquefacilidadegasolina;
    }

    public void setDeondevemgasolina(String deondevemgasolina){
        this.deondevemgasolina = deondevemgasolina;
    }

    public String getDeondevemgasolina(){
        return deondevemgasolina;
    }

    public void setFacilidadediesel(String facilidadediesel){
        this.facilidadediesel = facilidadediesel;
    }

    public String getFacilidadediesel(){
        return facilidadediesel;
    }

    public void setPorquefacilidadediesel(String porquefacilidadediesel){
        this.porquefacilidadediesel = porquefacilidadediesel;
    }

    public String getPorquefacilidadediesel(){
        return porquefacilidadediesel;
    }

    public void setDeondevemdiesel(String deondevemdiesel){
        this.deondevemdiesel = deondevemdiesel;
    }

    public String getDeondevemdiesel(){
        return deondevemdiesel;
    }

    public void setFotoposto1(String fotoposto1){
        this.fotoposto1 = fotoposto1;
    }

    public String getFotoposto1(){
        return fotoposto1;
    }

    public void setFotoposto2(String fotoposto2){
        this.fotoposto2 = fotoposto2;
    }

    public String getFotoposto2(){
        return fotoposto2;
    }


}
