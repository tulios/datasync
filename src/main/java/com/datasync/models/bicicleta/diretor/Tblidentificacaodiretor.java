package com.datasync.models.bicicleta.diretor;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;

import com.datasync.models.IndexableEntity;
import com.datasync.models.IndexableWithDifferentName;

@Entity(name = "com.datasync.models.bicicleta.diretor.Tblidentificacaodiretor")
@Table(name = "tblIdentificacaoDiretor")
@SuppressWarnings("serial")
public class Tblidentificacaodiretor extends IndexableEntity implements IndexableWithDifferentName{

    @Id
    @Column(name = "IdFormulario")
    private String idformulario;
    @Column(name = "Sexo")
    private String sexo;
    @Column(name = "AnoExperiencia")
    private Integer anoexperiencia;
    @Column(name = "MesExperiencia")
    private Integer mesexperiencia;
    @Column(name = "Escolaridade")
    private Integer escolaridade;
    @Column(name = "Especialidade")
    private String especialidade;

    @Override
    public String getDifferentName() {
    	return "com.datasync.models.bicicleta.diretor.Tblidentificacaodiretor";
    }
    
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

    public void setAnoexperiencia(Integer anoexperiencia){
        this.anoexperiencia = anoexperiencia;
    }

    public Integer getAnoexperiencia(){
        return anoexperiencia;
    }

    public void setMesexperiencia(Integer mesexperiencia){
        this.mesexperiencia = mesexperiencia;
    }

    public Integer getMesexperiencia(){
        return mesexperiencia;
    }

    public void setEscolaridade(Integer escolaridade){
        this.escolaridade = escolaridade;
    }

    public Integer getEscolaridade(){
        return escolaridade;
    }

    public void setEspecialidade(String especialidade){
        this.especialidade = especialidade;
    }

    public String getEspecialidade(){
        return especialidade;
    }


}
