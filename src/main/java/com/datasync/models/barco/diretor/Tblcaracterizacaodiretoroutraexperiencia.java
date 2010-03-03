package com.datasync.models.barco.diretor;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;

import com.datasync.models.IndexableEntity;

@Entity
@Table(name = "tblCaracterizacaoDiretorOutraExperiencia")
@SuppressWarnings("serial")
public class Tblcaracterizacaodiretoroutraexperiencia extends IndexableEntity{

    @Column(name = "IdTipoOutraExperiencia")
    private Integer idtipooutraexperiencia;
    @Id
    @Column(name = "IdFormulario")
    private String idformulario;
    @Column(name = "QuaisOutras")
    private String quaisoutras;

    @Override
    public String getIdColumnName() {
        return "idformulario";
    }

    @Override
	public String getIndexId() {
		return getIdformulario()+"#"+getIdtipooutraexperiencia();
	}

	@Override
    public boolean isCompoundKey() {
    	return true;
    }
    
    @Override
    public String getCompoundIdColumnName() {
    	return "idtipooutraexperiencia";
    }

    public void setIdtipooutraexperiencia(Integer idtipooutraexperiencia){
        this.idtipooutraexperiencia = idtipooutraexperiencia;
    }

    public Integer getIdtipooutraexperiencia(){
        return idtipooutraexperiencia;
    }

    public void setIdformulario(String idformulario){
        this.idformulario = idformulario;
    }

    public String getIdformulario(){
        return idformulario;
    }

    public void setQuaisoutras(String quaisoutras){
        this.quaisoutras = quaisoutras;
    }

    public String getQuaisoutras(){
        return quaisoutras;
    }


}
