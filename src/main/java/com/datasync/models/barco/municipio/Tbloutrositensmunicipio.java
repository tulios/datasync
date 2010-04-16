package com.datasync.models.barco.municipio;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;

import com.datasync.models.IndexableEntity;

@Entity
@Table(name = "tblOutrosItensMunicipio")
@SuppressWarnings("serial")
public class Tbloutrositensmunicipio extends IndexableEntity{

    @Id
    @Column(name = "IdFormulario")
    private String idformulario;
    @Column(name = "Foto1")
    private String foto1;
    @Column(name = "Descricao1")
    private String descricao1;
    @Column(name = "Foto2")
    private String foto2;
    @Column(name = "Descricao2")
    private String descricao2;
    @Column(name = "Foto3")
    private String foto3;
    @Column(name = "Descricao3")
    private String descricao3;
    @Column(name = "Foto4")
    private String foto4;
    @Column(name = "Descricao4")
    private String descricao4;
    @Column(name = "Foto5")
    private String foto5;
    @Column(name = "Descricao5")
    private String descricao5;
    @Column(name = "Foto6")
    private String foto6;
    @Column(name = "Descricao6")
    private String descricao6;
    @Column(name = "Foto7")
    private String foto7;
    @Column(name = "Descricao7")
    private String descricao7;
    @Column(name = "Foto8")
    private String foto8;
    @Column(name = "Descricao8")
    private String descricao8;

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

    public void setFoto1(String foto1){
        this.foto1 = foto1;
    }

    public String getFoto1(){
        return foto1;
    }

    public void setDescricao1(String descricao1){
        this.descricao1 = descricao1;
    }

    public String getDescricao1(){
        return descricao1;
    }

    public void setFoto2(String foto2){
        this.foto2 = foto2;
    }

    public String getFoto2(){
        return foto2;
    }

    public void setDescricao2(String descricao2){
        this.descricao2 = descricao2;
    }

    public String getDescricao2(){
        return descricao2;
    }

    public void setFoto3(String foto3){
        this.foto3 = foto3;
    }

    public String getFoto3(){
        return foto3;
    }

    public void setDescricao3(String descricao3){
        this.descricao3 = descricao3;
    }

    public String getDescricao3(){
        return descricao3;
    }

    public void setFoto4(String foto4){
        this.foto4 = foto4;
    }

    public String getFoto4(){
        return foto4;
    }

    public void setDescricao4(String descricao4){
        this.descricao4 = descricao4;
    }

    public String getDescricao4(){
        return descricao4;
    }

    public void setFoto5(String foto5){
        this.foto5 = foto5;
    }

    public String getFoto5(){
        return foto5;
    }

    public void setDescricao5(String descricao5){
        this.descricao5 = descricao5;
    }

    public String getDescricao5(){
        return descricao5;
    }

    public void setFoto6(String foto6){
        this.foto6 = foto6;
    }

    public String getFoto6(){
        return foto6;
    }

    public void setDescricao6(String descricao6){
        this.descricao6 = descricao6;
    }

    public String getDescricao6(){
        return descricao6;
    }

    public void setFoto7(String foto7){
        this.foto7 = foto7;
    }

    public String getFoto7(){
        return foto7;
    }

    public void setDescricao7(String descricao7){
        this.descricao7 = descricao7;
    }

    public String getDescricao7(){
        return descricao7;
    }

    public void setFoto8(String foto8){
        this.foto8 = foto8;
    }

    public String getFoto8(){
        return foto8;
    }

    public void setDescricao8(String descricao8){
        this.descricao8 = descricao8;
    }

    public String getDescricao8(){
        return descricao8;
    }


}
