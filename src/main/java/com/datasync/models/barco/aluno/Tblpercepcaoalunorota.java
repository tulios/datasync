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
    @Column(name = "IdTipoOutroTransporte")
    private Integer idtipooutrotransporte;
    @Column(name = "DescricaoTempo")
    private String descricaotempo;
    @Column(name = "Tempo")
    private String tempo;
    @Column(name = "QuaisOutros")
    private String quaisOutros;

    @Override
    public String getIdColumnName() {
        return "idformulario";
    }

    @Override
	public String getIndexId() {
		return getIdformulario()+"#"+getIdtipooutrotransporte();
	}

	@Override
	public boolean isCompoundKey() {
		return true;
	}

	@Override
	public String getCompoundIdColumnName() {
		return "idtipooutrotransporte";
	}

    public void setIdformulario(String idformulario){
        this.idformulario = idformulario;
    }

    public String getIdformulario(){
        return idformulario;
    }

    public void setIdtipooutrotransporte(Integer idtipooutrotransporte){
        this.idtipooutrotransporte = idtipooutrotransporte;
    }

    public Integer getIdtipooutrotransporte(){
        return idtipooutrotransporte;
    }

    public void setDescricaotempo(String descricaotempo){
        this.descricaotempo = descricaotempo;
    }

    public String getDescricaotempo(){
        return descricaotempo;
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

}
