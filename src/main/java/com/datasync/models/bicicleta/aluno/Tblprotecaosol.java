package com.datasync.models.bicicleta.aluno;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;

import com.datasync.models.IndexableEntity;

@Entity
@Table(name = "tblProtecaoSol")
@SuppressWarnings("serial")
public class Tblprotecaosol extends IndexableEntity{

    @Id
    @Column(name = "IdFormulario")
    private String idformulario;
    @Column(name = "IdTipoProtecao")
    private Integer idtipoprotecao;
    @Column(name = "QualOutroTipoProtecaoSol")
    private String qualoutrotipoprotecaosol;

    @Override
    public boolean isCompoundKey() {
    	return true;
    }
    
    @Override
    public String getCompoundIdColumnName() {
    	return "IdTipoProtecao";
    }
    
    @Override
    public String getIdColumnName() {
        return "idformulario";
    }

    @Override
    public String getIndexId() {
        return getIdformulario() + "#" + getIdtipoprotecao();
    }

    public void setIdformulario(String idformulario){
        this.idformulario = idformulario;
    }

    public String getIdformulario(){
        return idformulario;
    }

    public void setIdtipoprotecao(Integer idtipoprotecao){
        this.idtipoprotecao = idtipoprotecao;
    }

    public Integer getIdtipoprotecao(){
        return idtipoprotecao;
    }

    public void setQualoutrotipoprotecaosol(String qualoutrotipoprotecaosol){
        this.qualoutrotipoprotecaosol = qualoutrotipoprotecaosol;
    }

    public String getQualoutrotipoprotecaosol(){
        return qualoutrotipoprotecaosol;
    }


}
