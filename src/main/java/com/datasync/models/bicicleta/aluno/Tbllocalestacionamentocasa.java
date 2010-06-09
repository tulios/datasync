package com.datasync.models.bicicleta.aluno;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;

import com.datasync.models.IndexableEntity;

@Entity
@Table(name = "tblLocalEstacionamentoCasa")
@SuppressWarnings("serial")
public class Tbllocalestacionamentocasa extends IndexableEntity{

    @Id
    @Column(name = "IdFormulario")
    private String idformulario;
    @Column(name = "IdTipoLocalEstacionamento")
    private Integer idtipolocalestacionamento;
    @Column(name = "QualOutroLocalEstacionamentoCasa")
    private String qualoutrolocalestacionamentocasa;

    @Override
    public boolean isCompoundKey() {
    	return true;
    }
    
    @Override
    public String getCompoundIdColumnName() {
    	return "IdTipoLocalEstacionamento";
    }
    
    @Override
    public String getIdColumnName() {
        return "idformulario";
    }

    @Override
    public String getIndexId() {
        return getIdformulario() + "#" + getIdtipolocalestacionamento();
    }

    public void setIdformulario(String idformulario){
        this.idformulario = idformulario;
    }

    public String getIdformulario(){
        return idformulario;
    }

    public void setIdtipolocalestacionamento(Integer idtipolocalestacionamento){
        this.idtipolocalestacionamento = idtipolocalestacionamento;
    }

    public Integer getIdtipolocalestacionamento(){
        return idtipolocalestacionamento;
    }

    public void setQualoutrolocalestacionamentocasa(String qualoutrolocalestacionamentocasa){
        this.qualoutrolocalestacionamentocasa = qualoutrolocalestacionamentocasa;
    }

    public String getQualoutrolocalestacionamentocasa(){
        return qualoutrolocalestacionamentocasa;
    }


}
