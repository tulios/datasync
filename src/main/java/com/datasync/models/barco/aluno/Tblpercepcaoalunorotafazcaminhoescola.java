package com.datasync.models.barco.aluno;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;

import com.datasync.models.IndexableEntity;

@Entity
@Table(name = "tblPercepcaoAlunoRotaFazCaminhoEscola")
@SuppressWarnings("serial")
public class Tblpercepcaoalunorotafazcaminhoescola extends IndexableEntity{

    @Id
    @Column(name = "IdFormulario")
    private String idformulario;
    @Column(name = "IdTipoFazCaminhoEscola")
    private Integer idtipofazcaminhoescola;
    @Column(name = "OutroQual")
    private String outroqual;

    @Override
    public String getIdColumnName() {
        return "idformulario";
    }

    @Override
	public String getIndexId() {
		return getIdformulario()+"#"+getIdtipofazcaminhoescola();
	}

	@Override
	public boolean isCompoundKey() {
		return true;
	}

	@Override
	public String getCompoundIdColumnName() {
		return "idtipofazcaminhoescola";
	}    

    public void setIdformulario(String idformulario){
        this.idformulario = idformulario;
    }

    public String getIdformulario(){
        return idformulario;
    }

    public void setIdtipofazcaminhoescola(Integer idtipofazcaminhoescola){
        this.idtipofazcaminhoescola = idtipofazcaminhoescola;
    }

    public Integer getIdtipofazcaminhoescola(){
        return idtipofazcaminhoescola;
    }

    public void setOutroqual(String outroqual){
        this.outroqual = outroqual;
    }

    public String getOutroqual(){
        return outroqual;
    }


}
