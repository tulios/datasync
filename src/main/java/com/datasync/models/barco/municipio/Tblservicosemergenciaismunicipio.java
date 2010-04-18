package com.datasync.models.barco.municipio;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;

import com.datasync.models.IndexableEntity;

@Entity
@Table(name = "tblServiçosEmergenciaisMunicipio")
@SuppressWarnings("serial")
public class Tblservicosemergenciaismunicipio extends IndexableEntity{

    @Id
    @Column(name = "IdFormulario")
    private String idformulario;
    @Column(name = "PossuiBombeiro")
    private String possuibombeiro;
    @Column(name = "QuantidadeBombeiro")
    private Integer quantidadebombeiro;
    @Column(name = "BombeiroPossuiBarco")
    private String bombeiropossuibarco;
    @Column(name = "FotoBombeiro1")
    private String fotobombeiro1;
    @Column(name = "FotoBombeiro2")
    private String fotobombeiro2;
    @Column(name = "PossuiHospital")
    private String possuihospital;
    @Column(name = "QuantidadeHospital")
    private Integer quantidadehospital;
    @Column(name = "HospitalPossuiBarco")
    private String hospitalpossuibarco;
    @Column(name = "FotoHospital1")
    private String fotohospital1;
    @Column(name = "FotoHospital2")
    private String fotohospital2;
    @Column(name = "PossuiPostoSaude")
    private String possuipostosaude;
    @Column(name = "QuantidadePostoSaude")
    private Integer quantidadepostosaude;
    @Column(name = "PostoSaudePossuiBarco")
    private String postosaudepossuibarco;
    @Column(name = "FotoPostoSaude1")
    private String fotopostosaude1;
    @Column(name = "FotoPostoSaude2")
    private String fotopostosaude2;
    @Column(name = "PossuiPostoPolicial")
    private String possuipostopolicial;
    @Column(name = "QuantidadePostoPolicial")
    private Integer quantidadepostopolicial;
    @Column(name = "PostoPolicialPossuiBarco")
    private String postopolicialpossuibarco;
    @Column(name = "FotoPostoPolicial1")
    private String fotopostopolicial1;
    @Column(name = "FotoPostoPolicial2")
    private String fotopostopolicial2;
    @Column(name = "PossuiTelefoniaCelular")
    private String possuitelefoniacelular;
    @Column(name = "QuaisTelefoniasCelular")
    private String quaistelefoniascelular;
    @Column(name = "PossuiTelefoniaFixa")
    private String possuitelefoniafixa;

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

    public void setPossuibombeiro(String possuibombeiro){
        this.possuibombeiro = possuibombeiro;
    }

    public String getPossuibombeiro(){
        return possuibombeiro;
    }

    public void setQuantidadebombeiro(Integer quantidadebombeiro){
        this.quantidadebombeiro = quantidadebombeiro;
    }

    public Integer getQuantidadebombeiro(){
        return quantidadebombeiro;
    }

    public void setBombeiropossuibarco(String bombeiropossuibarco){
        this.bombeiropossuibarco = bombeiropossuibarco;
    }

    public String getBombeiropossuibarco(){
        return bombeiropossuibarco;
    }

    public void setFotobombeiro1(String fotobombeiro1){
        this.fotobombeiro1 = fotobombeiro1;
    }

    public String getFotobombeiro1(){
        return fotobombeiro1;
    }

    public void setFotobombeiro2(String fotobombeiro2){
        this.fotobombeiro2 = fotobombeiro2;
    }

    public String getFotobombeiro2(){
        return fotobombeiro2;
    }

    public void setPossuihospital(String possuihospital){
        this.possuihospital = possuihospital;
    }

    public String getPossuihospital(){
        return possuihospital;
    }

    public void setQuantidadehospital(Integer quantidadehospital){
        this.quantidadehospital = quantidadehospital;
    }

    public Integer getQuantidadehospital(){
        return quantidadehospital;
    }

    public void setHospitalpossuibarco(String hospitalpossuibarco){
        this.hospitalpossuibarco = hospitalpossuibarco;
    }

    public String getHospitalpossuibarco(){
        return hospitalpossuibarco;
    }

    public void setFotohospital1(String fotohospital1){
        this.fotohospital1 = fotohospital1;
    }

    public String getFotohospital1(){
        return fotohospital1;
    }

    public void setFotohospital2(String fotohospital2){
        this.fotohospital2 = fotohospital2;
    }

    public String getFotohospital2(){
        return fotohospital2;
    }

    public void setPossuipostosaude(String possuipostosaude){
        this.possuipostosaude = possuipostosaude;
    }

    public String getPossuipostosaude(){
        return possuipostosaude;
    }

    public void setQuantidadepostosaude(Integer quantidadepostosaude){
        this.quantidadepostosaude = quantidadepostosaude;
    }

    public Integer getQuantidadepostosaude(){
        return quantidadepostosaude;
    }

    public void setPostosaudepossuibarco(String postosaudepossuibarco){
        this.postosaudepossuibarco = postosaudepossuibarco;
    }

    public String getPostosaudepossuibarco(){
        return postosaudepossuibarco;
    }

    public void setFotopostosaude1(String fotopostosaude1){
        this.fotopostosaude1 = fotopostosaude1;
    }

    public String getFotopostosaude1(){
        return fotopostosaude1;
    }

    public void setFotopostosaude2(String fotopostosaude2){
        this.fotopostosaude2 = fotopostosaude2;
    }

    public String getFotopostosaude2(){
        return fotopostosaude2;
    }

    public void setPossuipostopolicial(String possuipostopolicial){
        this.possuipostopolicial = possuipostopolicial;
    }

    public String getPossuipostopolicial(){
        return possuipostopolicial;
    }

    public void setQuantidadepostopolicial(Integer quantidadepostopolicial){
        this.quantidadepostopolicial = quantidadepostopolicial;
    }

    public Integer getQuantidadepostopolicial(){
        return quantidadepostopolicial;
    }

    public void setPostopolicialpossuibarco(String postopolicialpossuibarco){
        this.postopolicialpossuibarco = postopolicialpossuibarco;
    }

    public String getPostopolicialpossuibarco(){
        return postopolicialpossuibarco;
    }

    public void setFotopostopolicial1(String fotopostopolicial1){
        this.fotopostopolicial1 = fotopostopolicial1;
    }

    public String getFotopostopolicial1(){
        return fotopostopolicial1;
    }

    public void setFotopostopolicial2(String fotopostopolicial2){
        this.fotopostopolicial2 = fotopostopolicial2;
    }

    public String getFotopostopolicial2(){
        return fotopostopolicial2;
    }

    public void setPossuitelefoniacelular(String possuitelefoniacelular){
        this.possuitelefoniacelular = possuitelefoniacelular;
    }

    public String getPossuitelefoniacelular(){
        return possuitelefoniacelular;
    }

    public void setQuaistelefoniascelular(String quaistelefoniascelular){
        this.quaistelefoniascelular = quaistelefoniascelular;
    }

    public String getQuaistelefoniascelular(){
        return quaistelefoniascelular;
    }

    public void setPossuitelefoniafixa(String possuitelefoniafixa){
        this.possuitelefoniafixa = possuitelefoniafixa;
    }

    public String getPossuitelefoniafixa(){
        return possuitelefoniafixa;
    }


}
