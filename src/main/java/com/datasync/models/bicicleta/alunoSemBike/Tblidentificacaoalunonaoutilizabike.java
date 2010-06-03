package com.datasync.models.bicicleta.alunoSemBike;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;

import com.datasync.models.IndexableEntity;

@Entity
@Table(name = "tblIdentificacaoAlunoNaoUtilizaBike")
@SuppressWarnings("serial")
public class Tblidentificacaoalunonaoutilizabike extends IndexableEntity{

    @Id
    @Column(name = "IdFormulario")
    private String idformulario;
    @Column(name = "IdTipoEscolaridade")
    private Integer idtipoescolaridade;
    @Column(name = "Sexo")
    private String sexo;
    @Column(name = "Idade")
    private Integer idade;
    @Column(name = "Turno")
    private Integer turno;

    @Override
    public boolean isCompoundKey() {
    	return true;
    }
    
    @Override
    public String getIdColumnName() {
        return "idformulario";
    }

    @Override
    public String getIndexId() {
        return getIdformulario() + "#" + getIdtipoescolaridade();
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

    public void setTurno(Integer turno){
        this.turno = turno;
    }

    public Integer getTurno(){
        return turno;
    }


}
