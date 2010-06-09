package com.datasync.models.bicicleta.aluno;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;

import com.datasync.models.IndexableEntity;

@Entity
@Table(name = "tblAtividade")
@SuppressWarnings("serial")
public class Tblatividade extends IndexableEntity{

    @Id
    @Column(name = "IdFormulario")
    private String idformulario;
    @Column(name = "IdTipoAtividade")
    private Integer idtipoatividade;
    @Column(name = "QualOutroAtividade")
    private String qualoutroatividade;

    @Override
    public boolean isCompoundKey() {
    	return true;
    }
    
    @Override
    public String getCompoundIdColumnName() {
    	return "IdTipoAtividade";
    }
    
    @Override
    public String getIdColumnName() {
        return "idformulario";
    }

    @Override
    public String getIndexId() {
        return getIdformulario()+"#"+getIdtipoatividade();
    }

    public void setIdformulario(String idformulario){
        this.idformulario = idformulario;
    }

    public String getIdformulario(){
        return idformulario;
    }

    public void setIdtipoatividade(Integer idtipoatividade){
        this.idtipoatividade = idtipoatividade;
    }

    public Integer getIdtipoatividade(){
        return idtipoatividade;
    }

    public void setQualoutroatividade(String qualoutroatividade){
        this.qualoutroatividade = qualoutroatividade;
    }

    public String getQualoutroatividade(){
        return qualoutroatividade;
    }


}
