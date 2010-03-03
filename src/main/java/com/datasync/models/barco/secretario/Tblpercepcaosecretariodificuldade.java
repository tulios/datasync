package com.datasync.models.barco.secretario;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;

import com.datasync.models.IndexableEntity;

@Entity
@Table(name = "tblPercepcaoSecretarioDificuldade")
@SuppressWarnings("serial")
public class Tblpercepcaosecretariodificuldade extends IndexableEntity{

    @Id
    @Column(name = "IdFormulario")
    private String idformulario;
    @Column(name = "IdTipoDificuldade")
    private Integer idtipodificuldade;
    @Column(name = "QuaisOutros")
    private String quaisoutros;

    @Override
    public String getIdColumnName() {
        return "idformulario";
    }

    @Override
	public String getIndexId() {
		return getIdformulario()+"#"+getIdtipodificuldade();
	}

	@Override
	public boolean isCompoundKey() {
		return true;
	}

	@Override
	public String getCompoundIdColumnName() {
		return "idtipodificuldade";
	}

    public void setIdformulario(String idformulario){
        this.idformulario = idformulario;
    }

    public String getIdformulario(){
        return idformulario;
    }

    public void setIdtipodificuldade(Integer idtipodificuldade){
        this.idtipodificuldade = idtipodificuldade;
    }

    public Integer getIdtipodificuldade(){
        return idtipodificuldade;
    }

    public void setQuaisoutros(String quaisoutros){
        this.quaisoutros = quaisoutros;
    }

    public String getQuaisoutros(){
        return quaisoutros;
    }


}
