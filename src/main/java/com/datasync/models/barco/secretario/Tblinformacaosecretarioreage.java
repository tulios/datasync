package com.datasync.models.barco.secretario;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;

import com.datasync.models.IndexableEntity;

@Entity
@Table(name = "tblInformacaoSecretarioReage")
@SuppressWarnings("serial")
public class Tblinformacaosecretarioreage extends IndexableEntity{

    @Column(name = "IdTipoReage")
    private Integer idtiporeage;
    @Id
    @Column(name = "IdFormulario")
    private String idformulario;
    @Column(name = "FormalizacaoPrestacaoServico")
    private String formalizacaoprestacaoservico;
    @Column(name = "QuaisOutros")
    private String quaisoutros;

    @Override
    public String getIdColumnName() {
        return "idformulario";
    }

    @Override
	public String getIndexId() {
		return getIdformulario()+"#"+getIdtiporeage();
	}

	@Override
	public boolean isCompoundKey() {
		return true;
	}

	@Override
	public String getCompoundIdColumnName() {
		return "idtiporeage";
	}

    public void setIdtiporeage(Integer idtiporeage){
        this.idtiporeage = idtiporeage;
    }

    public Integer getIdtiporeage(){
        return idtiporeage;
    }

    public void setIdformulario(String idformulario){
        this.idformulario = idformulario;
    }

    public String getIdformulario(){
        return idformulario;
    }

    public void setFormalizacaoprestacaoservico(String formalizacaoprestacaoservico){
        this.formalizacaoprestacaoservico = formalizacaoprestacaoservico;
    }

    public String getFormalizacaoprestacaoservico(){
        return formalizacaoprestacaoservico;
    }

    public void setQuaisoutros(String quaisoutros){
        this.quaisoutros = quaisoutros;
    }

    public String getQuaisoutros(){
        return quaisoutros;
    }


}
