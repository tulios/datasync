package com.datasync.models.barco.secretario;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;

import com.datasync.models.IndexableEntity;

@Entity
@Table(name = "tblInformacaoSecretarioAcordo")
@SuppressWarnings("serial")
public class Tblinformacaosecretarioacordo extends IndexableEntity{

    @Column(name = "IdTipoAcordo")
    private Integer idtipoacordo;
    @Id
    @Column(name = "IdFormulario")
    private String idformulario;
    @Column(name = "RealizaTransporteEscolar")
    private String realizatransporteescolar;
    @Column(name = "QuaisOutros")
    private String quaisoutros;

    @Override
    public String getIdColumnName() {
        return "idformulario";
    }

    @Override
	public String getIndexId() {
		return getIdformulario()+"#"+getIdtipoacordo();
	}

	@Override
	public boolean isCompoundKey() {
		return true;
	}

	@Override
	public String getCompoundIdColumnName() {
		return "idtipoacordo";
	}

    public void setIdtipoacordo(Integer idtipoacordo){
        this.idtipoacordo = idtipoacordo;
    }

    public Integer getIdtipoacordo(){
        return idtipoacordo;
    }

    public void setIdformulario(String idformulario){
        this.idformulario = idformulario;
    }

    public String getIdformulario(){
        return idformulario;
    }

    public void setRealizatransporteescolar(String realizatransporteescolar){
        this.realizatransporteescolar = realizatransporteescolar;
    }

    public String getRealizatransporteescolar(){
        return realizatransporteescolar;
    }

    public void setQuaisoutros(String quaisoutros){
        this.quaisoutros = quaisoutros;
    }

    public String getQuaisoutros(){
        return quaisoutros;
    }


}
