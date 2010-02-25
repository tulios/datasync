package com.datasync.models.barco;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;

import com.datasync.models.IndexableEntity;

@Entity
@Table(name = "TblInformacaoCondutorAvisoAluno")
@SuppressWarnings("serial")
public class TblInformacaoCondutorAvisoAluno extends IndexableEntity {

	@Id
	@Column(name = "IdFormulario")
	private String idFormulario;
	@Column(name = "IdTipoAvisoAluno")
	private int idTipoAvisoAluno;
	@Column(name = "AlunoAssisteAula")
	private String alunoAssisteAula;
	@Column(name = "QualOutro")
	private String qualOutro;

	public TblInformacaoCondutorAvisoAluno(){
	}
	
	@Override
	public String getIdColumnName() {
		return "idFormulario";
	}
	
	@Override
	public String getIndexId() {
		return getIdFormulario()+"#"+getIdTipoAvisoAluno();
	}

	@Override
    public boolean isCompoundKey() {
    	return true;
    }
    
    @Override
    public String getCompoundIdColumnName() {
    	return "idTipoAvisoAluno";
    }

	public String getIdFormulario() {
		return idFormulario;
	}

	public void setIdFormulario(String idFormulario) {
		this.idFormulario = idFormulario;
	}

	public int getIdTipoAvisoAluno() {
		return idTipoAvisoAluno;
	}

	public void setIdTipoAvisoAluno(int idTipoAvisoAluno) {
		this.idTipoAvisoAluno = idTipoAvisoAluno;
	}

	public String getAlunoAssisteAula() {
		return alunoAssisteAula;
	}

	public void setAlunoAssisteAula(String alunoAssisteAula) {
		this.alunoAssisteAula = alunoAssisteAula;
	}

	public String getQualOutro() {
		return qualOutro;
	}

	public void setQualOutro(String qualOutro) {
		this.qualOutro = qualOutro;
	}

}
