package com.datasync.models.barco.pais;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;

import com.datasync.models.IndexableEntity;

@Entity
@Table(name = "tblCaracterizacaoFamiliaPaisAuxilio")
@SuppressWarnings("serial")
public class Tblcaracterizacaofamiliapaisauxilio extends IndexableEntity{

    @Column(name = "IdTipoAuxilio")
    private Integer idtipoauxilio;
    @Id
    @Column(name = "IdFormulario")
    private String idformulario;
    @Column(name = "QualOutro")
    private String qualoutro;

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

    public void setIdtipoauxilio(Integer idtipoauxilio){
        this.idtipoauxilio = idtipoauxilio;
    }

    public Integer getIdtipoauxilio(){
        return idtipoauxilio;
    }

    public void setIdformulario(String idformulario){
        this.idformulario = idformulario;
    }

    public String getIdformulario(){
        return idformulario;
    }

    public void setQualoutro(String qualoutro){
        this.qualoutro = qualoutro;
    }

    public String getQualoutro(){
        return qualoutro;
    }


}
