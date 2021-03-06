package com.datasync.models.bicicleta.professor;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;

import com.datasync.models.IndexableEntity;

@Entity
@Table(name = "tblProfessorProblemasTransito")
@SuppressWarnings("serial")
public class Tblprofessorproblemastransito extends IndexableEntity{

    @Id
    @Column(name = "IdFormulario")
    private String idformulario;
    @Column(name = "IdTipoProblemasTransito")
    private Integer idtipoproblemastransito;
    @Column(name = "QuaisOutros")
    private String quaisoutros;

    @Override
    public boolean isCompoundKey() {
    	return true;
    }
    
    @Override
    public String getCompoundIdColumnName() {
    	return "IdTipoProblemasTransito";
    }
    
    @Override
    public String getIdColumnName() {
        return "idformulario";
    }

    @Override
    public String getIndexId() {
        return getIdformulario() + "#" + getIdtipoproblemastransito();
    }

    public void setIdformulario(String idformulario){
        this.idformulario = idformulario;
    }

    public String getIdformulario(){
        return idformulario;
    }

    public void setIdtipoproblemastransito(Integer idtipoproblemastransito){
        this.idtipoproblemastransito = idtipoproblemastransito;
    }

    public Integer getIdtipoproblemastransito(){
        return idtipoproblemastransito;
    }

    public void setQuaisoutros(String quaisoutros){
        this.quaisoutros = quaisoutros;
    }

    public String getQuaisoutros(){
        return quaisoutros;
    }


}
