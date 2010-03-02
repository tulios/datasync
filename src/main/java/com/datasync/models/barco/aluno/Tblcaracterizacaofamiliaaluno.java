package com.datasync.models.barco.aluno;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;

import com.datasync.models.IndexableEntity;

import java.sql.Timestamp;

@Entity
@Table(name = "tblCaracterizacaoFamiliaAluno")
@SuppressWarnings("serial")
public class Tblcaracterizacaofamiliaaluno extends IndexableEntity{

    @Id
    @Column(name = "IdFormulario")
    private String idformulario;
    @Column(name = "TemFilhos")
    private String temfilhos;
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
    @Column(name = "QuantidadeCasaConjuge")
    private Integer quantidadecasaconjuge;
    @Column(name = "QuantidadeCasaPrimos")
    private Integer quantidadecasaprimos;
    @Column(name = "QuantidadeCasaAvos")
    private Integer quantidadecasaavos;
    @Column(name = "QuantidadeCasaIrmao")
    private Integer quantidadecasairmao;
    @Column(name = "QuantidadeCasaTio")
    private Integer quantidadecasatio;
    @Column(name = "QuantidadeCasaOutrosQuais")
    private String quantidadecasaoutrosquais;
    @Column(name = "CasaOutrosQuem")
    private String casaoutrosquem;

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

    public void setTemfilhos(String temfilhos){
        this.temfilhos = temfilhos;
    }

    public String getTemfilhos(){
        return temfilhos;
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

    public void setQuantidadecasamae(Integer quantidadecasamae){
        this.quantidadecasamae = quantidadecasamae;
    }

    public Integer getQuantidadecasamae(){
        return quantidadecasamae;
    }

    public void setQuantidadecasafilhos(Integer quantidadecasafilhos){
        this.quantidadecasafilhos = quantidadecasafilhos;
    }

    public Integer getQuantidadecasafilhos(){
        return quantidadecasafilhos;
    }

    public void setQuantidadecasaconjuge(Integer quantidadecasaconjuge){
        this.quantidadecasaconjuge = quantidadecasaconjuge;
    }

    public Integer getQuantidadecasaconjuge(){
        return quantidadecasaconjuge;
    }

    public void setQuantidadecasaprimos(Integer quantidadecasaprimos){
        this.quantidadecasaprimos = quantidadecasaprimos;
    }

    public Integer getQuantidadecasaprimos(){
        return quantidadecasaprimos;
    }

    public void setQuantidadecasaavos(Integer quantidadecasaavos){
        this.quantidadecasaavos = quantidadecasaavos;
    }

    public Integer getQuantidadecasaavos(){
        return quantidadecasaavos;
    }

    public void setQuantidadecasairmao(Integer quantidadecasairmao){
        this.quantidadecasairmao = quantidadecasairmao;
    }

    public Integer getQuantidadecasairmao(){
        return quantidadecasairmao;
    }

    public void setQuantidadecasatio(Integer quantidadecasatio){
        this.quantidadecasatio = quantidadecasatio;
    }

    public Integer getQuantidadecasatio(){
        return quantidadecasatio;
    }

    public void setQuantidadecasaoutrosquais(String quantidadecasaoutrosquais){
        this.quantidadecasaoutrosquais = quantidadecasaoutrosquais;
    }

    public String getQuantidadecasaoutrosquais(){
        return quantidadecasaoutrosquais;
    }

    public void setCasaoutrosquem(String casaoutrosquem){
        this.casaoutrosquem = casaoutrosquem;
    }

    public String getCasaoutrosquem(){
        return casaoutrosquem;
    }


}
