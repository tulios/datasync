package com.datasync.models.barco.aluno;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;

import com.datasync.models.IndexableEntity;

@Entity
@Table(name = "tblPercepcaoAlunoRotaEpocaPior")
@SuppressWarnings("serial")
public class Tblpercepcaoalunorotaepocapior extends IndexableEntity{

    @Id
    @Column(name = "IdFormulario")
    private String idformulario;
    @Column(name = "IdTipoEpoca")
    private Integer idtipoepoca;
    @Column(name = "QualOutro")
    private String qualoutro;
    @Column(name = "PorqueOutro")
    private String porqueoutro;

    @Override
    public String getIdColumnName() {
        return "idformulario";
    }

    @Override
	public String getIndexId() {
		return getIdformulario()+"#"+getIdtipoepoca();
	}

	@Override
	public boolean isCompoundKey() {
		return true;
	}

	@Override
	public String getCompoundIdColumnName() {
		return "idtipoepoca";
	}

    public void setIdformulario(String idformulario){
        this.idformulario = idformulario;
    }

    public String getIdformulario(){
        return idformulario;
    }

    public void setIdtipoepoca(Integer idtipoepoca){
        this.idtipoepoca = idtipoepoca;
    }

    public Integer getIdtipoepoca(){
        return idtipoepoca;
    }

    public void setQualoutro(String qualoutro){
        this.qualoutro = qualoutro;
    }

    public String getQualoutro(){
        return qualoutro;
    }

    public void setPorqueoutro(String porqueoutro){
        this.porqueoutro = porqueoutro;
    }

    public String getPorqueoutro(){
        return porqueoutro;
    }


}
