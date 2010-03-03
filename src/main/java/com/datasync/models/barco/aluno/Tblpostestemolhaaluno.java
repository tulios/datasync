package com.datasync.models.barco.aluno;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;

import com.datasync.models.IndexableEntity;

@Entity
@Table(name = "tblPosTesteMolhaAluno")
@SuppressWarnings("serial")
public class Tblpostestemolhaaluno extends IndexableEntity{

    @Id
    @Column(name = "IdFormulario")
    private String idformulario;
    @Column(name = "IdTipoMolhaAluno")
    private Integer idtipomolhaaluno;
    @Column(name = "MolhouAluno")
    private String molhoualuno;

    @Override
    public String getIdColumnName() {
        return "idformulario";
    }

    @Override
	public String getIndexId() {
		return getIdformulario()+"#"+getIdtipomolhaaluno();
	}

	@Override
	public boolean isCompoundKey() {
		return true;
	}

	@Override
	public String getCompoundIdColumnName() {
		return "idtipomolhaaluno";
	}

    public void setIdformulario(String idformulario){
        this.idformulario = idformulario;
    }

    public String getIdformulario(){
        return idformulario;
    }

    public void setIdtipomolhaaluno(Integer idtipomolhaaluno){
        this.idtipomolhaaluno = idtipomolhaaluno;
    }

    public Integer getIdtipomolhaaluno(){
        return idtipomolhaaluno;
    }

    public void setMolhoualuno(String molhoualuno){
        this.molhoualuno = molhoualuno;
    }

    public String getMolhoualuno(){
        return molhoualuno;
    }


}
