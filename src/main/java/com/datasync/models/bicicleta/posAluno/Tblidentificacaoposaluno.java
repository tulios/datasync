package com.datasync.models.bicicleta.posAluno;

import java.sql.Timestamp;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;

import com.datasync.models.IndexableEntity;

@Entity
@Table(name = "tblIdentificacaoPosAluno")
@SuppressWarnings("serial")
public class Tblidentificacaoposaluno extends IndexableEntity{

    @Id
    @Column(name = "IdFormulario")
    private String idformulario;
    @Column(name = "Pesquisador")
    private String pesquisador;
    @Column(name = "Data")
    private Timestamp data;
    @Column(name = "IdMunicipio")
    private Integer idmunicipio;
    @Column(name = "IdINEP")
    private Integer idinep;
    @Column(name = "NomeEscola")
    private String nomeescola;
    @Column(name = "IdAluno")
    private String idaluno;

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

    public void setPesquisador(String pesquisador){
        this.pesquisador = pesquisador;
    }

    public String getPesquisador(){
        return pesquisador;
    }

    public void setData(Timestamp data){
        this.data = data;
    }

    public Timestamp getData(){
        return data;
    }

    public void setIdmunicipio(Integer idmunicipio){
        this.idmunicipio = idmunicipio;
    }

    public Integer getIdmunicipio(){
        return idmunicipio;
    }

    public void setIdinep(Integer idinep){
        this.idinep = idinep;
    }

    public Integer getIdinep(){
        return idinep;
    }

    public void setNomeescola(String nomeescola){
        this.nomeescola = nomeescola;
    }

    public String getNomeescola(){
        return nomeescola;
    }

    public void setIdaluno(String idaluno){
        this.idaluno = idaluno;
    }

    public String getIdaluno(){
        return idaluno;
    }


}
