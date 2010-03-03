package com.datasync.models.barco.prefeito;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;

import com.datasync.models.IndexableEntity;

import java.sql.Timestamp;

@Entity
@Table(name = "tblIdentificacaoPrefeito")
@SuppressWarnings("serial")
public class Tblidentificacaoprefeito extends IndexableEntity{

    @Id
    @Column(name = "IdFormulario")
    private String idformulario;
    @Column(name = "IdTipoEscolaridade")
    private Integer idtipoescolaridade;
    @Column(name = "Telefone1")
    private String telefone1;
    @Column(name = "Telefone2")
    private String telefone2;
    @Column(name = "email1")
    private String email1;
    @Column(name = "email2")
    private String email2;
    @Column(name = "Sexo")
    private String sexo;
    @Column(name = "Idade")
    private Integer idade;

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

    public void setTelefone1(String telefone1){
        this.telefone1 = telefone1;
    }

    public String getTelefone1(){
        return telefone1;
    }

    public void setTelefone2(String telefone2){
        this.telefone2 = telefone2;
    }

    public String getTelefone2(){
        return telefone2;
    }

    public void setEmail1(String email1){
        this.email1 = email1;
    }

    public String getEmail1(){
        return email1;
    }

    public void setEmail2(String email2){
        this.email2 = email2;
    }

    public String getEmail2(){
        return email2;
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


}
