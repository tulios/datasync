package com.datasync.models.barco.professor;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;

import com.datasync.models.IndexableEntity;

@Entity
@Table(name = "tblPercepcaoProfessorProvidencia")
@SuppressWarnings("serial")
public class Tblpercepcaoprofessorprovidencia extends IndexableEntity{

    @Id
    @Column(name = "IdFormulario")
    private String idformulario;
    @Column(name = "IdTipoProvidenciaProfessor")
    private Integer idtipoprovidenciaprofessor;
    @Column(name = "QualOutro")
    private String qualoutro;

    @Override
    public String getIdColumnName() {
        return "idformulario";
    }

    @Override
	public String getIndexId() {
		return getIdformulario()+"#"+getIdtipoprovidenciaprofessor();
	}

	@Override
	public boolean isCompoundKey() {
		return true;
	}

	@Override
	public String getCompoundIdColumnName() {
		return "idtipoprovidenciaprofessor";
	}

    public void setIdformulario(String idformulario){
        this.idformulario = idformulario;
    }

    public String getIdformulario(){
        return idformulario;
    }

    public void setIdtipoprovidenciaprofessor(Integer idtipoprovidenciaprofessor){
        this.idtipoprovidenciaprofessor = idtipoprovidenciaprofessor;
    }

    public Integer getIdtipoprovidenciaprofessor(){
        return idtipoprovidenciaprofessor;
    }

    public void setQualoutro(String qualoutro){
        this.qualoutro = qualoutro;
    }

    public String getQualoutro(){
        return qualoutro;
    }


}
