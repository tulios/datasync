package com.datasync.models.barco.pais;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;

import com.datasync.models.IndexableEntity;

@Entity
@Table(name = "tblInformacaoPaisSugestao")
@SuppressWarnings("serial")
public class Tblinformacaopaissugestao extends IndexableEntity{

    @Column(name = "IdTipoSugestao")
    private Integer idtiposugestao;
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
		return getIdformulario()+"#"+getIdtiposugestao();
	}

	@Override
	public boolean isCompoundKey() {
		return true;
	}

	@Override
	public String getCompoundIdColumnName() {
		return "idtiposugestao";
	}

    public void setIdtiposugestao(Integer idtiposugestao){
        this.idtiposugestao = idtiposugestao;
    }

    public Integer getIdtiposugestao(){
        return idtiposugestao;
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
