package com.datasync.models.bicicleta.aluno;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;

import com.datasync.models.IndexableEntity;

@Entity
@Table(name = "tblProtecaoChuva")
@SuppressWarnings("serial")
public class Tblprotecaochuva extends IndexableEntity{

    @Id
    @Column(name = "IdFormulario")
    private String idformulario;
    @Column(name = "IdTipoProtecao")
    private Integer idtipoprotecao;
    @Column(name = "QualOutroTipoProtecaoChuva")
    private String qualoutrotipoprotecaochuva;

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

    public void setQualoutrotipoprotecaochuva(String qualoutrotipoprotecaochuva){
        this.qualoutrotipoprotecaochuva = qualoutrotipoprotecaochuva;
    }

    public String getQualoutrotipoprotecaochuva(){
        return qualoutrotipoprotecaochuva;
    }


}