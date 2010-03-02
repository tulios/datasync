package com.datasync.models.barco.aluno;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;

import com.datasync.models.IndexableEntity;

import java.sql.Timestamp;

@Entity
@Table(name = "tblIdentificacaoAluno")
@SuppressWarnings("serial")
public class Tblidentificacaoaluno extends IndexableEntity{

    @Id
    @Column(name = "IdFormulario")
    private String idformulario;
    @Column(name = "Sexo")
    private String sexo;
    @Column(name = "Idade")
    private Integer idade;
    @Column(name = "Comunidade")
    private String comunidade;
    @Column(name = "Turno")
    private Integer turno;
    @Column(name = "IdTipoEscolaridade")
    private Integer idtipoescolaridade;

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

    public void setSexo(String sexo){
        this.sexo = sexo;
    }

    public String getSexo(){
        return sexo;
    }

    public void setIdade(Integer idade){
        this.idade = idade;
    }

    public Integer getIdade(){
        return idade;
    }

    public void setComunidade(String comunidade){
        this.comunidade = comunidade;
    }

    public String getComunidade(){
        return comunidade;
    }

    public void setTurno(Integer turno){
        this.turno = turno;
    }

    public Integer getTurno(){
        return turno;
    }

    public void setIdtipoescolaridade(Integer idtipoescolaridade){
        this.idtipoescolaridade = idtipoescolaridade;
    }

    public Integer getIdtipoescolaridade(){
        return idtipoescolaridade;
    }


}
