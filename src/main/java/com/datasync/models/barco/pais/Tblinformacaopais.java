package com.datasync.models.barco.pais;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;

import com.datasync.models.IndexableEntity;

@Entity
@Table(name = "tblInformacaoPais")
@SuppressWarnings("serial")
public class Tblinformacaopais extends IndexableEntity{

    @Id
    @Column(name = "IdFormulario")
    private String idformulario;
    @Column(name = "TempoEscola")
    private String tempoescola;
    @Column(name = "QualOutro")
    private String qualoutro;
    @Column(name = "ProblemasOutrasPessoas")
    private String problemasoutraspessoas;
    @Column(name = "ProblemasOutrasPessoasPorque")
    private String problemasoutraspessoasporque;
    @Column(name = "ProblemaBarqueiroVizinhanca")
    private String problemabarqueirovizinhanca;
    @Column(name = "ProblemaBarqueiroVizinhancaPorque")
    private String problemabarqueirovizinhancaporque;
    @Column(name = "BarcoNaoBuscaFilho")
    private String barconaobuscafilho;
    @Column(name = "BarcoNaoBuscaFilhoFrequencia")
    private String barconaobuscafilhofrequencia;
    @Column(name = "PorqueBarcoNaoBuscaFilho")
    private String porquebarconaobuscafilho;

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

    public void setTempoescola(String tempoescola){
        this.tempoescola = tempoescola;
    }

    public String getTempoescola(){
        return tempoescola;
    }

    public void setQualoutro(String qualoutro){
        this.qualoutro = qualoutro;
    }

    public String getQualoutro(){
        return qualoutro;
    }

    public void setProblemasoutraspessoas(String problemasoutraspessoas){
        this.problemasoutraspessoas = problemasoutraspessoas;
    }

    public String getProblemasoutraspessoas(){
        return problemasoutraspessoas;
    }

    public void setProblemasoutraspessoasporque(String problemasoutraspessoasporque){
        this.problemasoutraspessoasporque = problemasoutraspessoasporque;
    }

    public String getProblemasoutraspessoasporque(){
        return problemasoutraspessoasporque;
    }

    public void setProblemabarqueirovizinhanca(String problemabarqueirovizinhanca){
        this.problemabarqueirovizinhanca = problemabarqueirovizinhanca;
    }

    public String getProblemabarqueirovizinhanca(){
        return problemabarqueirovizinhanca;
    }

    public void setProblemabarqueirovizinhancaporque(String problemabarqueirovizinhancaporque){
        this.problemabarqueirovizinhancaporque = problemabarqueirovizinhancaporque;
    }

    public String getProblemabarqueirovizinhancaporque(){
        return problemabarqueirovizinhancaporque;
    }

    public void setBarconaobuscafilho(String barconaobuscafilho){
        this.barconaobuscafilho = barconaobuscafilho;
    }

    public String getBarconaobuscafilho(){
        return barconaobuscafilho;
    }

    public void setBarconaobuscafilhofrequencia(String barconaobuscafilhofrequencia){
        this.barconaobuscafilhofrequencia = barconaobuscafilhofrequencia;
    }

    public String getBarconaobuscafilhofrequencia(){
        return barconaobuscafilhofrequencia;
    }

    public void setPorquebarconaobuscafilho(String porquebarconaobuscafilho){
        this.porquebarconaobuscafilho = porquebarconaobuscafilho;
    }

    public String getPorquebarconaobuscafilho(){
        return porquebarconaobuscafilho;
    }


}
