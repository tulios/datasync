package com.datasync.models.barco.pais;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;

import com.datasync.models.IndexableEntity;

@Entity
@Table(name = "tblCaracterizacaoFamiliaPais")
@SuppressWarnings("serial")
public class Tblcaracterizacaofamiliapais extends IndexableEntity{

    @Id
    @Column(name = "IdFormulario")
    private String idformulario;
    @Column(name = "OcupacaoPai")
    private String ocupacaopai;
    @Column(name = "OcupacaoMae")
    private String ocupacaomae;
    @Column(name = "QuantidadeFilhos")
    private Integer quantidadefilhos;
    @Column(name = "QuantidadeFilhosIdadeEscolar")
    private Integer quantidadefilhosidadeescolar;
    @Column(name = "QuantidadeCasaPais")
    private Integer quantidadecasapais;
    @Column(name = "QuantidadeCasaMae")
    private Integer quantidadecasamae;
    @Column(name = "QuantidadeCasaFilhos")
    private Integer quantidadecasafilhos;
    @Column(name = "QuantidadeCasaNoraGenro")
    private Integer quantidadecasanoragenro;
    @Column(name = "QuantidadeCasaIrmao")
    private Integer quantidadecasairmao;
    @Column(name = "QuantidadeCasaAvos")
    private Integer quantidadecasaavos;
    @Column(name = "QuantidadeCasaNetos")
    private Integer quantidadecasanetos;
    @Column(name = "QuantidadeOutros")
    private Integer quantidadeoutros;
    @Column(name = "QuantidadeCasaOutrosQuais")
    private String quantidadecasaoutrosquais;
    @Column(name = "QuantidadeAjudamSustento")
    private Integer quantidadeajudamsustento;

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

    public void setOcupacaopai(String ocupacaopai){
        this.ocupacaopai = ocupacaopai;
    }

    public String getOcupacaopai(){
        return ocupacaopai;
    }

    public void setOcupacaomae(String ocupacaomae){
        this.ocupacaomae = ocupacaomae;
    }

    public String getOcupacaomae(){
        return ocupacaomae;
    }

    public void setQuantidadefilhos(Integer quantidadefilhos){
        this.quantidadefilhos = quantidadefilhos;
    }

    public Integer getQuantidadefilhos(){
        return quantidadefilhos;
    }

    public void setQuantidadefilhosidadeescolar(Integer quantidadefilhosidadeescolar){
        this.quantidadefilhosidadeescolar = quantidadefilhosidadeescolar;
    }

    public Integer getQuantidadefilhosidadeescolar(){
        return quantidadefilhosidadeescolar;
    }

    public void setQuantidadecasapais(Integer quantidadecasapais){
        this.quantidadecasapais = quantidadecasapais;
    }

    public Integer getQuantidadecasapais(){
        return quantidadecasapais;
    }

    public void setQuantidadecasamãe(Integer quantidadecasamãe){
        this.quantidadecasamae = quantidadecasamãe;
    }

    public Integer getQuantidadecasamãe(){
        return quantidadecasamae;
    }

    public void setQuantidadecasafilhos(Integer quantidadecasafilhos){
        this.quantidadecasafilhos = quantidadecasafilhos;
    }

    public Integer getQuantidadecasafilhos(){
        return quantidadecasafilhos;
    }

    public void setQuantidadecasanoragenro(Integer quantidadecasanoragenro){
        this.quantidadecasanoragenro = quantidadecasanoragenro;
    }

    public Integer getQuantidadecasanoragenro(){
        return quantidadecasanoragenro;
    }

    public void setQuantidadecasairmao(Integer quantidadecasairmao){
        this.quantidadecasairmao = quantidadecasairmao;
    }

    public Integer getQuantidadecasairmao(){
        return quantidadecasairmao;
    }

    public void setQuantidadecasaavos(Integer quantidadecasaavos){
        this.quantidadecasaavos = quantidadecasaavos;
    }

    public Integer getQuantidadecasaavos(){
        return quantidadecasaavos;
    }

    public void setQuantidadecasanetos(Integer quantidadecasanetos){
        this.quantidadecasanetos = quantidadecasanetos;
    }

    public Integer getQuantidadecasanetos(){
        return quantidadecasanetos;
    }

    public void setQuantidadeoutros(Integer quantidadeoutros){
        this.quantidadeoutros = quantidadeoutros;
    }

    public Integer getQuantidadeoutros(){
        return quantidadeoutros;
    }

    public void setQuantidadecasaoutrosquais(String quantidadecasaoutrosquais){
        this.quantidadecasaoutrosquais = quantidadecasaoutrosquais;
    }

    public String getQuantidadecasaoutrosquais(){
        return quantidadecasaoutrosquais;
    }

    public void setQuantidadeajudamsustento(Integer quantidadeajudamsustento){
        this.quantidadeajudamsustento = quantidadeajudamsustento;
    }

    public Integer getQuantidadeajudamsustento(){
        return quantidadeajudamsustento;
    }


}
