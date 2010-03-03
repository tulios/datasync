package com.datasync.models.barco.professor;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;

import com.datasync.models.IndexableEntity;

@Entity
@Table(name = "tblIdentificacaoProfessor")
@SuppressWarnings("serial")
public class Tblidentificacaoprofessor extends IndexableEntity{

    @Id
    @Column(name = "IdFormulario")
    private String idformulario;
    @Column(name = "IdTipoEscolaridade")
    private Integer idtipoescolaridade;
    @Column(name = "Sexo")
    private String sexo;
    @Column(name = "Idade")
    private Integer idade;
    @Column(name = "Comunidade")
    private String comunidade;

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

    public void setIdtipoescolaridade(Integer idtipoescolaridade){
        this.idtipoescolaridade = idtipoescolaridade;
    }

    public Integer getIdtipoescolaridade(){
        return idtipoescolaridade;
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


}
