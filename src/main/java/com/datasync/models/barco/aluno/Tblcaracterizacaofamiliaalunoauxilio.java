package com.datasync.models.barco.aluno;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;

import com.datasync.models.IndexableEntity;

@Entity
@Table(name = "tblCaracterizacaoFamiliaAlunoAuxilio")
@SuppressWarnings("serial")
public class Tblcaracterizacaofamiliaalunoauxilio extends IndexableEntity{

	@Id
	@Column(name = "IdFormulario")
	private String idformulario;
	@Column(name = "IdTipoAuxilio")
	private Integer idtipoauxilio;
	@Column(name = "QualOutro")
	private String qualoutro;
	@Column(name = "AlunoTrabalha")
	private String alunotrabalha;

	@Override
	public String getIdColumnName() {
		return "idformulario";
	}

	@Override
	public String getIndexId() {
		return getIdformulario()+"#"+getIdtipoauxilio();
	}

	@Override
	public boolean isCompoundKey() {
		return true;
	}

	@Override
	public String getCompoundIdColumnName() {
		return "idtipoauxilio";
	}

	public void setIdformulario(String idformulario){
		this.idformulario = idformulario;
	}

	public String getIdformulario(){
		return idformulario;
	}

	public void setIdtipoauxilio(Integer idtipoauxilio){
		this.idtipoauxilio = idtipoauxilio;
	}

	public Integer getIdtipoauxilio(){
		return idtipoauxilio;
	}

	public void setQualoutro(String qualoutro){
		this.qualoutro = qualoutro;
	}

	public String getQualoutro(){
		return qualoutro;
	}

	public void setAlunotrabalha(String alunotrabalha){
		this.alunotrabalha = alunotrabalha;
	}

	public String getAlunotrabalha(){
		return alunotrabalha;
	}


}
