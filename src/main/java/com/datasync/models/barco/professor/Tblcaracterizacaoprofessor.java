package com.datasync.models.barco.professor;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;

import com.datasync.models.IndexableEntity;

@Entity
@Table(name = "tblCaracterizacaoProfessor")
@SuppressWarnings("serial")
public class Tblcaracterizacaoprofessor extends IndexableEntity{

    @Id
    @Column(name = "IdFormulario")
    private String idformulario;
    @Column(name = "TempoExperienciaAno")
    private Integer tempoexperienciaano;
    @Column(name = "TempoExperienciaMes")
    private Integer tempoexperienciames;
    @Column(name = "TempoAtuacaoAno")
    private Integer tempoatuacaoano;
    @Column(name = "TempoAtuacaoMes")
    private Integer tempoatuacaomes;
    @Column(name = "CursoExtra")
    private String cursoextra;
    @Column(name = "QualCursoExtra")
    private String qualcursoextra;
    @Column(name = "OutraFuncao")
    private String outrafuncao;
    @Column(name = "ProfessorOutraEscola")
    private String professoroutraescola;
    @Column(name = "QuantasOutraEscola")
    private Integer quantasoutraescola;
    @Column(name = "QualOutrasEscolas")
    private String qualoutrasescolas;

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

    public void setTempoexperienciaano(Integer tempoexperienciaano){
        this.tempoexperienciaano = tempoexperienciaano;
    }

    public Integer getTempoexperienciaano(){
        return tempoexperienciaano;
    }

    public void setTempoexperienciames(Integer tempoexperienciames){
        this.tempoexperienciames = tempoexperienciames;
    }

    public Integer getTempoexperienciames(){
        return tempoexperienciames;
    }

    public void setTempoatuacaoano(Integer tempoatuacaoano){
        this.tempoatuacaoano = tempoatuacaoano;
    }

    public Integer getTempoatuacaoano(){
        return tempoatuacaoano;
    }

    public void setTempoatuacaomes(Integer tempoatuacaomes){
        this.tempoatuacaomes = tempoatuacaomes;
    }

    public Integer getTempoatuacaomes(){
        return tempoatuacaomes;
    }

    public void setCursoextra(String cursoextra){
        this.cursoextra = cursoextra;
    }

    public String getCursoextra(){
        return cursoextra;
    }

    public void setQualcursoextra(String qualcursoextra){
        this.qualcursoextra = qualcursoextra;
    }

    public String getQualcursoextra(){
        return qualcursoextra;
    }

    public void setOutrafuncao(String outrafuncao){
        this.outrafuncao = outrafuncao;
    }

    public String getOutrafuncao(){
        return outrafuncao;
    }

    public void setProfessoroutraescola(String professoroutraescola){
        this.professoroutraescola = professoroutraescola;
    }

    public String getProfessoroutraescola(){
        return professoroutraescola;
    }

    public void setQuantasoutraescola(Integer quantasoutraescola){
        this.quantasoutraescola = quantasoutraescola;
    }

    public Integer getQuantasoutraescola(){
        return quantasoutraescola;
    }

    public void setQualoutrasescolas(String qualoutrasescolas){
        this.qualoutrasescolas = qualoutrasescolas;
    }

    public String getQualoutrasescolas(){
        return qualoutrasescolas;
    }


}
