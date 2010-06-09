package com.datasync.models.bicicleta.aluno;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;

import com.datasync.models.IndexableEntity;

@Entity
@Table(name = "tblEquipamentoProtecao")
@SuppressWarnings("serial")
public class Tblequipamentoprotecao extends IndexableEntity{

    @Id
    @Column(name = "IdFormulario")
    private String idformulario;
    @Column(name = "IdTipoEquipamentoProtecao")
    private Integer idtipoequipamentoprotecao;
    @Column(name = "QualOutroEquipamentoProtecao")
    private String qualoutroequipamentoprotecao;

    @Override
    public boolean isCompoundKey() {
    	return true;
    }
    
    @Override
    public String getCompoundIdColumnName() {
    	return "IdTipoEquipamentoProtecao";
    }
    
    @Override
    public String getIdColumnName() {
        return "idformulario";
    }

    @Override
    public String getIndexId() {
        return getIdformulario() + "#" + getIdtipoequipamentoprotecao();
    }

    public void setIdformulario(String idformulario){
        this.idformulario = idformulario;
    }

    public String getIdformulario(){
        return idformulario;
    }

    public void setIdtipoequipamentoprotecao(Integer idtipoequipamentoprotecao){
        this.idtipoequipamentoprotecao = idtipoequipamentoprotecao;
    }

    public Integer getIdtipoequipamentoprotecao(){
        return idtipoequipamentoprotecao;
    }

    public void setQualoutroequipamentoprotecao(String qualoutroequipamentoprotecao){
        this.qualoutroequipamentoprotecao = qualoutroequipamentoprotecao;
    }

    public String getQualoutroequipamentoprotecao(){
        return qualoutroequipamentoprotecao;
    }


}
