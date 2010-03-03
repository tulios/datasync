package com.datasync.models.barco.aluno;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;

import com.datasync.models.IndexableEntity;

import java.sql.Timestamp;

@Entity
@Table(name = "tblPosTesteAuno")
@SuppressWarnings("serial")
public class Tblpostesteauno extends IndexableEntity{

    @Id
    @Column(name = "IdFormulario")
    private String idformulario;
    @Column(name = "MelhorBarco")
    private Integer melhorbarco;
    @Column(name = "GostouBarco")
    private String gostoubarco;
    @Column(name = "NaoGostouBarco")
    private String naogostoubarco;
    @Column(name = "GostouViagem")
    private String gostouviagem;
    @Column(name = "NaoGostouViagem")
    private String naogostouviagem;
    @Column(name = "ColeteSalvaVida")
    private Integer coletesalvavida;
    @Column(name = "PorqueGostouColete")
    private String porquegostoucolete;
    @Column(name = "UsarColeteSalvaVida")
    private String usarcoletesalvavida;
    @Column(name = "PorqueUsar")
    private String porqueusar;

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

    public void setMelhorbarco(Integer melhorbarco){
        this.melhorbarco = melhorbarco;
    }

    public Integer getMelhorbarco(){
        return melhorbarco;
    }

    public void setGostoubarco(String gostoubarco){
        this.gostoubarco = gostoubarco;
    }

    public String getGostoubarco(){
        return gostoubarco;
    }

    public void setNaogostoubarco(String naogostoubarco){
        this.naogostoubarco = naogostoubarco;
    }

    public String getNaogostoubarco(){
        return naogostoubarco;
    }

    public void setGostouviagem(String gostouviagem){
        this.gostouviagem = gostouviagem;
    }

    public String getGostouviagem(){
        return gostouviagem;
    }

    public void setNaogostouviagem(String naogostouviagem){
        this.naogostouviagem = naogostouviagem;
    }

    public String getNaogostouviagem(){
        return naogostouviagem;
    }

    public void setColetesalvavida(Integer coletesalvavida){
        this.coletesalvavida = coletesalvavida;
    }

    public Integer getColetesalvavida(){
        return coletesalvavida;
    }

    public void setPorquegostoucolete(String porquegostoucolete){
        this.porquegostoucolete = porquegostoucolete;
    }

    public String getPorquegostoucolete(){
        return porquegostoucolete;
    }

    public void setUsarcoletesalvavida(String usarcoletesalvavida){
        this.usarcoletesalvavida = usarcoletesalvavida;
    }

    public String getUsarcoletesalvavida(){
        return usarcoletesalvavida;
    }

    public void setPorqueusar(String porqueusar){
        this.porqueusar = porqueusar;
    }

    public String getPorqueusar(){
        return porqueusar;
    }


}
