package com.datasync.models.bicicleta.posAluno;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;

import com.datasync.models.IndexableEntity;

@Entity
@Table(name = "tblPercepcaoPosAluno")
@SuppressWarnings("serial")
public class Tblpercepcaoposaluno extends IndexableEntity{

    @Id
    @Column(name = "IdFormulario")
    private String idformulario;
    @Column(name = "BicicletaMelhor")
    private Integer bicicletamelhor;
    @Column(name = "Aparencia")
    private Integer aparencia;
    @Column(name = "PorqueAparencia")
    private String porqueaparencia;
    @Column(name = "Frequencia")
    private Integer frequencia;
    @Column(name = "Selim")
    private String selim;
    @Column(name = "Guiar")
    private String guiar;
    @Column(name = "PorqueGuiar")
    private String porqueguiar;
    @Column(name = "Pesada")
    private String pesada;
    @Column(name = "ForcaPedalar")
    private String forcapedalar;
    @Column(name = "Freio")
    private String freio;
    @Column(name = "Sujou")
    private String sujou;
    @Column(name = "Empurrar")
    private String empurrar;
    @Column(name = "DuracaoTeste")
    private Integer duracaoteste;
    @Column(name = "ImportanteMarchas")
    private String importantemarchas;
    @Column(name = "PorqueImportanteMarchas")
    private String porqueimportantemarchas;
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

    public void setBicicletamelhor(Integer bicicletamelhor){
        this.bicicletamelhor = bicicletamelhor;
    }

    public Integer getBicicletamelhor(){
        return bicicletamelhor;
    }

    public void setAparencia(Integer aparencia){
        this.aparencia = aparencia;
    }

    public Integer getAparencia(){
        return aparencia;
    }

    public void setPorqueaparencia(String porqueaparencia){
        this.porqueaparencia = porqueaparencia;
    }

    public String getPorqueaparencia(){
        return porqueaparencia;
    }

    public void setFrequencia(Integer frequencia){
        this.frequencia = frequencia;
    }

    public Integer getFrequencia(){
        return frequencia;
    }

    public void setSelim(String selim){
        this.selim = selim;
    }

    public String getSelim(){
        return selim;
    }

    public void setGuiar(String guiar){
        this.guiar = guiar;
    }

    public String getGuiar(){
        return guiar;
    }

    public void setPorqueguiar(String porqueguiar){
        this.porqueguiar = porqueguiar;
    }

    public String getPorqueguiar(){
        return porqueguiar;
    }

    public void setPesada(String pesada){
        this.pesada = pesada;
    }

    public String getPesada(){
        return pesada;
    }

    public void setForcapedalar(String forcapedalar){
        this.forcapedalar = forcapedalar;
    }

    public String getForcapedalar(){
        return forcapedalar;
    }

    public void setFreio(String freio){
        this.freio = freio;
    }

    public String getFreio(){
        return freio;
    }

    public void setSujou(String sujou){
        this.sujou = sujou;
    }

    public String getSujou(){
        return sujou;
    }

    public void setEmpurrar(String empurrar){
        this.empurrar = empurrar;
    }

    public String getEmpurrar(){
        return empurrar;
    }

    public void setDuracaoteste(Integer duracaoteste){
        this.duracaoteste = duracaoteste;
    }

    public Integer getDuracaoteste(){
        return duracaoteste;
    }

    public void setImportantemarchas(String importantemarchas){
        this.importantemarchas = importantemarchas;
    }

    public String getImportantemarchas(){
        return importantemarchas;
    }

    public void setPorqueimportantemarchas(String porqueimportantemarchas){
        this.porqueimportantemarchas = porqueimportantemarchas;
    }

    public String getPorqueimportantemarchas(){
        return porqueimportantemarchas;
    }

    public void setObservacao(String observacao){
        this.observacao = observacao;
    }

    public String getObservacao(){
        return observacao;
    }


}
