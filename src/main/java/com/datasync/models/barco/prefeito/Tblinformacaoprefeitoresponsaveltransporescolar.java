package com.datasync.models.barco.prefeito;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;

import com.datasync.models.IndexableEntity;

@Entity
@Table(name = "tblInformacaoPrefeitoResponsavelTransporEscolar")
@SuppressWarnings("serial")
public class Tblinformacaoprefeitoresponsaveltransporescolar extends IndexableEntity{

    @Column(name = "IdTipoResponsavel")
    private Integer idtiporesponsavel;
    @Column(name = "QuaisOutros")
    private String quaisoutros;
    @Id
    @Column(name = "IdFormulario")
    private String idformulario;

    @Override
    public String getIdColumnName() {
        return "idformulario";
    }

    @Override
	public String getIndexId() {
		return getIdformulario()+"#"+getIdtiporesponsavel();
	}

	@Override
	public boolean isCompoundKey() {
		return true;
	}

	@Override
	public String getCompoundIdColumnName() {
		return "idtiporesponsavel";
	}

    public void setIdtiporesponsavel(Integer idtiporesponsavel){
        this.idtiporesponsavel = idtiporesponsavel;
    }

    public Integer getIdtiporesponsavel(){
        return idtiporesponsavel;
    }

    public void setQuaisoutros(String quaisoutros){
        this.quaisoutros = quaisoutros;
    }

    public String getQuaisoutros(){
        return quaisoutros;
    }

    public void setIdformulario(String idformulario){
        this.idformulario = idformulario;
    }

    public String getIdformulario(){
        return idformulario;
    }


}
