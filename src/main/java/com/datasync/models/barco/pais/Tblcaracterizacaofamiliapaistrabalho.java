package com.datasync.models.barco.pais;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;

import com.datasync.models.IndexableEntity;

@Entity
@Table(name = "tblCaracterizacaoFamiliaPaisTrabalho")
@SuppressWarnings("serial")
public class Tblcaracterizacaofamiliapaistrabalho extends IndexableEntity{

    @Column(name = "IdTipoTrabalho")
    private Integer idtipotrabalho;
    @Id
    @Column(name = "IdFormulario")
    private String idformulario;
    @Column(name = "DescricaoAjuda")
    private String descricaoajuda;

    @Override
    public String getIdColumnName() {
        return "idformulario";
    }

    @Override
	public String getIndexId() {
		return getIdformulario()+"#"+getIdtipotrabalho();
	}

	@Override
	public boolean isCompoundKey() {
		return true;
	}

	@Override
	public String getCompoundIdColumnName() {
		return "idtipotrabalho";
	}

    public void setIdtipotrabalho(Integer idtipotrabalho){
        this.idtipotrabalho = idtipotrabalho;
    }

    public Integer getIdtipotrabalho(){
        return idtipotrabalho;
    }

    public void setIdformulario(String idformulario){
        this.idformulario = idformulario;
    }

    public String getIdformulario(){
        return idformulario;
    }

    public void setDescricaoajuda(String descricaoajuda){
        this.descricaoajuda = descricaoajuda;
    }

    public String getDescricaoajuda(){
        return descricaoajuda;
    }


}
