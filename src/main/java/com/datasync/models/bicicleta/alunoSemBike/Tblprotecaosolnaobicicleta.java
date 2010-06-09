package com.datasync.models.bicicleta.alunoSemBike;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;

import com.datasync.models.IndexableEntity;

@Entity
@Table(name = "tblProtecaoSolNaoBicicleta")
@SuppressWarnings("serial")
public class Tblprotecaosolnaobicicleta extends IndexableEntity{

    @Id
    @Column(name = "IdFormulario")
    private String idformulario;
    @Column(name = "IdTipoProtecao")
    private Integer idtipoprotecao;
    @Column(name = "QualOutroProtecaoSol")
    private String qualoutroprotecaosol;

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

    public void setQualoutroprotecaosol(String qualoutroprotecaosol){
        this.qualoutroprotecaosol = qualoutroprotecaosol;
    }

    public String getQualoutroprotecaosol(){
        return qualoutroprotecaosol;
    }


}
