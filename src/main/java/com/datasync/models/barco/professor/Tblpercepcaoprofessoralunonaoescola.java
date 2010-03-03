package com.datasync.models.barco.professor;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;

import com.datasync.models.IndexableEntity;

@Entity
@Table(name = "tblPercepcaoProfessorAlunoNaoEscola")
@SuppressWarnings("serial")
public class Tblpercepcaoprofessoralunonaoescola extends IndexableEntity{

    @Id
    @Column(name = "IdFormulario")
    private String idformulario;
    @Column(name = "IdTipoAlunoNaoEscola")
    private Integer idtipoalunonaoescola;
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
		return "idtipoalunonaoescola";
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
