package com.datasync.models.barco.diretor;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;

import com.datasync.models.IndexableEntity;

@Entity
@Table(name = "tblPercepcaoDiretorAlunoNaoEscola")
@SuppressWarnings("serial")
public class Tblpercepcaodiretoralunonaoescola extends IndexableEntity{

    @Column(name = "IdTipoAlunoNaoEscola")
    private Integer idtipoalunonaoescola;
    @Id
    @Column(name = "IdFormulario")
    private String idformulario;
    @Column(name = "CriancaNaoEscola")
    private String criancanaoescola;
    @Column(name = "OutrosQuais")
    private String outrosquais;

    @Override
    public String getIdColumnName() {
        return "idformulario";
    }

    @Override
	public String getIndexId() {
		return getIdformulario()+"#"+getIdtipoalunonaoescola();
	}

	@Override
    public boolean isCompoundKey() {
    	return true;
    }
    
    @Override
    public String getCompoundIdColumnName() {
    	return "IdTipoAlunoNaoEscola";
    }

    public void setIdtipoalunonaoescola(Integer idtipoalunonaoescola){
        this.idtipoalunonaoescola = idtipoalunonaoescola;
    }

    public Integer getIdtipoalunonaoescola(){
        return idtipoalunonaoescola;
    }

    public void setIdformulario(String idformulario){
        this.idformulario = idformulario;
    }

    public String getIdformulario(){
        return idformulario;
    }

    public void setCriancanaoescola(String criancanaoescola){
        this.criancanaoescola = criancanaoescola;
    }

    public String getCriancanaoescola(){
        return criancanaoescola;
    }

    public void setOutrosquais(String outrosquais){
        this.outrosquais = outrosquais;
    }

    public String getOutrosquais(){
        return outrosquais;
    }


}
