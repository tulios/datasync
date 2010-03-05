package com.datasync.models.barco.pais;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;

import com.datasync.models.IndexableEntity;

@Entity
@Table(name = "tblIdentificacaoPais")
@SuppressWarnings("serial")
public class Tblidentificacaopais extends IndexableEntity{

    @Id
    @Column(name = "IdFormulario")
    private String idformulario;
    @Column(name = "TipoEntrevistado")
    private String tipoentrevistado;
    @Column(name = "Comunidade")
    private String comunidade;
    @Column(name = "Idade")
    private Integer idade;
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

    public void setTipoentrevistado(String tipoentrevistado){
        this.tipoentrevistado = tipoentrevistado;
    }

    public String getTipoentrevistado(){
        return tipoentrevistado;
    }

    public void setComunidade(String comunidade){
        this.comunidade = comunidade;
    }

    public String getComunidade(){
        return comunidade;
    }

    public void setIdade(Integer idade){
        this.idade = idade;
    }

    public Integer getIdade(){
        return idade;
    }

    public void setIdtipoescolaridade(Integer idtipoescolaridade){
        this.idtipoescolaridade = idtipoescolaridade;
    }

    public Integer getIdtipoescolaridade(){
        return idtipoescolaridade;
    }


}
