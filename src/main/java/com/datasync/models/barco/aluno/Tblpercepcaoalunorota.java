package com.datasync.models.barco.aluno;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;

import com.datasync.models.IndexableEntity;

@Entity
@Table(name = "tblPercepcaoAlunoRota")
@SuppressWarnings("serial")
public class Tblpercepcaoalunorota extends IndexableEntity{

    @Id
    @Column(name = "IdFormulario")
    private String idformulario;
    @Column(name = "Tempo")
    private String tempo;
    @Column(name = "QuaisOutros")
    private String quaisOutros;
    @Column(name = "Cheia")
    private String cheia;
    @Column(name = "Epoca")
    private String epoca;
    @Column(name = "CaminhoSeca")
    private String caminhoSeca;
    @Column(name = "CaminhoCheia")
    private String caminhoCheia;
    @Column(name = "Seca")
    private String seca;

    @Override
    public String getIdColumnName() {
        return "idformulario";
    }

    @Override
	public String getIndexId() {
		return getIdformulario();
	}

    public void setIdformulario(String idformulario){
        this.idformulario = idformulario;
    }

    public String getIdformulario(){
        return idformulario;
    }

    public void setTempo(String tempo){
        this.tempo = tempo;
    }

    public String getTempo(){
        return tempo;
    }

	public String getQuaisOutros() {
		return quaisOutros;
	}

	public void setQuaisOutros(String quaisOutros) {
		this.quaisOutros = quaisOutros;
	}

	public String getCheia() {
		return cheia;
	}

	public void setCheia(String cheia) {
		this.cheia = cheia;
	}

	public String getEpoca() {
		return epoca;
	}

	public void setEpoca(String epoca) {
		this.epoca = epoca;
	}

	public String getCaminhoSeca() {
		return caminhoSeca;
	}

	public void setCaminhoSeca(String caminhoSeca) {
		this.caminhoSeca = caminhoSeca;
	}

	public String getCaminhoCheia() {
		return caminhoCheia;
	}

	public void setCaminhoCheia(String caminhoCheia) {
		this.caminhoCheia = caminhoCheia;
	}

	public String getSeca() {
		return seca;
	}

	public void setSeca(String seca) {
		this.seca = seca;
	}
	
}
