package com.datasync.models.barco.condutor;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;

import com.datasync.models.IndexableEntity;

@Entity
@Table(name = "tblIdentificacaoCondutor")
@SuppressWarnings("serial")
public class TblIdentificacaoCondutor extends IndexableEntity {

	@Id
	@Column(name = "IdFormulario")
	private String idFormulario;
	@Column(name = "Comunidade")
	private String comunidade;
	@Column(name = "Sexo", length = 1)
	private String sexo;
	@Column(name = "Idade")
	private int idade;
	@Column(name = "IdTipoEscolaridade")
	private int idTipoEscolaridade;
	@Column(name = "Grupo")
	private String grupo;
	@Column(name = "QuaisGrupos")
	private String quaisGrupos;
	
	public TblIdentificacaoCondutor(){
	}
	
	@Override
	public String getIdColumnName() {
		return "idFormulario";
	}

	@Override
	public String getIndexId() {
		return getIdFormulario();
	}

	public String getIdFormulario() {
		return idFormulario;
	}

	public void setIdFormulario(String idFormulario) {
		this.idFormulario = idFormulario;
	}

	public String getComunidade() {
		return comunidade;
	}

	public void setComunidade(String comunidade) {
		this.comunidade = comunidade;
	}

	public String getSexo() {
		return sexo;
	}

	public void setSexo(String sexo) {
		this.sexo = sexo;
	}

	public int getIdade() {
		return idade;
	}

	public void setIdade(int idade) {
		this.idade = idade;
	}

	public int getIdTipoEscolaridade() {
		return idTipoEscolaridade;
	}

	public void setIdTipoEscolaridade(int idTipoEscolaridade) {
		this.idTipoEscolaridade = idTipoEscolaridade;
	}

	public String getGrupo() {
		return grupo;
	}

	public void setGrupo(String grupo) {
		this.grupo = grupo;
	}

	public String getQuaisGrupos() {
		return quaisGrupos;
	}

	public void setQuaisGrupos(String quaisGrupos) {
		this.quaisGrupos = quaisGrupos;
	}
	
}
