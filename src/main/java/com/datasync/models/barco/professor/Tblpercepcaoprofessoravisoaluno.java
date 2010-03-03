package com.datasync.models.barco.professor;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;

import com.datasync.models.IndexableEntity;

@Entity
@Table(name = "tblPercepcaoProfessorAvisoAluno")
@SuppressWarnings("serial")
public class Tblpercepcaoprofessoravisoaluno extends IndexableEntity{

    @Column(name = "IdTipoAvisoAluno")
    private Integer idtipoavisoaluno;
    @Id
    @Column(name = "IdFormulario")
    private String idformulario;
    @Column(name = "AlunoAssisteAula")
    private String alunoassisteaula;
    @Column(name = "QualOutro")
    private String qualoutro;

    @Override
    public String getIdColumnName() {
        return "idformulario";
    }

    @Override
	public String getIndexId() {
		return getIdformulario()+"#"+getIdtipoavisoaluno();
	}

	@Override
	public boolean isCompoundKey() {
		return true;
	}

	@Override
	public String getCompoundIdColumnName() {
		return "idtipoavisoaluno";
	}

    public void setIdtipoavisoaluno(Integer idtipoavisoaluno){
        this.idtipoavisoaluno = idtipoavisoaluno;
    }

    public Integer getIdtipoavisoaluno(){
        return idtipoavisoaluno;
    }

    public void setIdformulario(String idformulario){
        this.idformulario = idformulario;
    }

    public String getIdformulario(){
        return idformulario;
    }

    public void setAlunoassisteaula(String alunoassisteaula){
        this.alunoassisteaula = alunoassisteaula;
    }

    public String getAlunoassisteaula(){
        return alunoassisteaula;
    }

    public void setQualoutro(String qualoutro){
        this.qualoutro = qualoutro;
    }

    public String getQualoutro(){
        return qualoutro;
    }


}
