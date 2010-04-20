package com.datasync.models.barco.fad;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;

import com.datasync.models.IndexableEntity;

@Entity
@Table(name = "tblImagens")
@SuppressWarnings("serial")
public class Tblimagens extends IndexableEntity{

    @Id
    @Column(name = "IdFormulario")
    private String idformulario;
    @Column(name = "AlunoEmbarcandoFoto1")
    private String alunoembarcandofoto1;
    @Column(name = "AlunoEmbarcandoFoto2")
    private String alunoembarcandofoto2;
    @Column(name = "AlunoEmbarcandoFoto3")
    private String alunoembarcandofoto3;
    @Column(name = "AlunoEmbarcandoFilmagem")
    private String alunoembarcandofilmagem;
    @Column(name = "AlunoSentadoFoto1")
    private String alunosentadofoto1;
    @Column(name = "AlunoSentadoFoto2")
    private String alunosentadofoto2;
    @Column(name = "AlunoSentadoFoto3")
    private String alunosentadofoto3;
    @Column(name = "AlunoSentadoFilmagem")
    private String alunosentadofilmagem;
    @Column(name = "AlunoDesembarcandoFoto1")
    private String alunodesembarcandofoto1;
    @Column(name = "AlunoDesembarcandoFoto2")
    private String alunodesembarcandofoto2;
    @Column(name = "AlunoDesembarcandoFoto3")
    private String alunodesembarcandofoto3;
    @Column(name = "AlunoDesembarcandoFilmagem")
    private String alunodesembarcandofilmagem;
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

    public void setAlunoembarcandofoto1(String alunoembarcandofoto1){
        this.alunoembarcandofoto1 = alunoembarcandofoto1;
    }

    public String getAlunoembarcandofoto1(){
        return alunoembarcandofoto1;
    }

    public void setAlunoembarcandofoto2(String alunoembarcandofoto2){
        this.alunoembarcandofoto2 = alunoembarcandofoto2;
    }

    public String getAlunoembarcandofoto2(){
        return alunoembarcandofoto2;
    }

    public void setAlunoembarcandofoto3(String alunoembarcandofoto3){
        this.alunoembarcandofoto3 = alunoembarcandofoto3;
    }

    public String getAlunoembarcandofoto3(){
        return alunoembarcandofoto3;
    }

    public void setAlunoembarcandofilmagem(String alunoembarcandofilmagem){
        this.alunoembarcandofilmagem = alunoembarcandofilmagem;
    }

    public String getAlunoembarcandofilmagem(){
        return alunoembarcandofilmagem;
    }

    public void setAlunosentadofoto1(String alunosentadofoto1){
        this.alunosentadofoto1 = alunosentadofoto1;
    }

    public String getAlunosentadofoto1(){
        return alunosentadofoto1;
    }

    public void setAlunosentadofoto2(String alunosentadofoto2){
        this.alunosentadofoto2 = alunosentadofoto2;
    }

    public String getAlunosentadofoto2(){
        return alunosentadofoto2;
    }

    public void setAlunosentadofoto3(String alunosentadofoto3){
        this.alunosentadofoto3 = alunosentadofoto3;
    }

    public String getAlunosentadofoto3(){
        return alunosentadofoto3;
    }

    public void setAlunosentadofilmagem(String alunosentadofilmagem){
        this.alunosentadofilmagem = alunosentadofilmagem;
    }

    public String getAlunosentadofilmagem(){
        return alunosentadofilmagem;
    }

    public void setAlunodesembarcandofoto1(String alunodesembarcandofoto1){
        this.alunodesembarcandofoto1 = alunodesembarcandofoto1;
    }

    public String getAlunodesembarcandofoto1(){
        return alunodesembarcandofoto1;
    }

    public void setAlunodesembarcandofoto2(String alunodesembarcandofoto2){
        this.alunodesembarcandofoto2 = alunodesembarcandofoto2;
    }

    public String getAlunodesembarcandofoto2(){
        return alunodesembarcandofoto2;
    }

    public void setAlunodesembarcandofoto3(String alunodesembarcandofoto3){
        this.alunodesembarcandofoto3 = alunodesembarcandofoto3;
    }

    public String getAlunodesembarcandofoto3(){
        return alunodesembarcandofoto3;
    }

    public void setAlunodesembarcandofilmagem(String alunodesembarcandofilmagem){
        this.alunodesembarcandofilmagem = alunodesembarcandofilmagem;
    }

    public String getAlunodesembarcandofilmagem(){
        return alunodesembarcandofilmagem;
    }

    public void setObservacao(String observacao){
        this.observacao = observacao;
    }

    public String getObservacao(){
        return observacao;
    }


}
