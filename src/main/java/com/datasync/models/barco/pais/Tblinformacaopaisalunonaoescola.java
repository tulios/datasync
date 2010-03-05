package com.datasync.models.barco.pais;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;

import com.datasync.models.IndexableEntity;

@Entity
@Table(name = "tblInformacaoPaisAlunoNaoEscola")
@SuppressWarnings("serial")
public class Tblinformacaopaisalunonaoescola extends IndexableEntity{

    @Id
    @Column(name = "IdFormulario")
    private String idformulario;
    @Column(name = "IdTipoAlunoNaoEscola")
    private Integer idtipoalunonaoescola;
    @Column(name = "QualOutro")
    private String qualoutro;

    @Override
    public String getIdColumnName() {
        return "idformulario";
    }

    @Override
	public String getIndexId() {
		return getIdformulario()+"#"+getIdtipoalunonaoescola();
	}

	@Override
	public boolean isCompoundKey() {
		return true;
	}

	@Override
	public String getCompoundIdColumnName() {
		return "idtipoalunonaoescola";
	}

    public void setIdformulario(String idformulario){
        this.idformulario = idformulario;
    }

    public String getIdformulario(){
        return idformulario;
    }

    public void setIdtipoalunonaoescola(Integer idtipoalunonaoescola){
        this.idtipoalunonaoescola = idtipoalunonaoescola;
    }

    public Integer getIdtipoalunonaoescola(){
        return idtipoalunonaoescola;
    }

    public void setQualoutro(String qualoutro){
        this.qualoutro = qualoutro;
    }

    public String getQualoutro(){
        return qualoutro;
    }


}
