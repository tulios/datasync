package com.datasync.models.bicicleta.alunoSemBike;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;

import com.datasync.models.IndexableEntity;

@Entity
@Table(name = "tblProtecaoChuvaNaoBicicleta")
@SuppressWarnings("serial")
public class Tblprotecaochuvanaobicicleta extends IndexableEntity{

    @Id
    @Column(name = "IdFormulario")
    private String idformulario;
    @Column(name = "IdTipoProtecao")
    private Integer idtipoprotecao;
    @Column(name = "QualOutroProtecaoChuva")
    private String qualoutroprotecaochuva;

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

    public void setQualoutroprotecaochuva(String qualoutroprotecaochuva){
        this.qualoutroprotecaochuva = qualoutroprotecaochuva;
    }

    public String getQualoutroprotecaochuva(){
        return qualoutroprotecaochuva;
    }


}
