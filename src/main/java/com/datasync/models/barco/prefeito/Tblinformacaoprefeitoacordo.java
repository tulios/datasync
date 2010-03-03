package com.datasync.models.barco.prefeito;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;

import com.datasync.models.IndexableEntity;

@Entity
@Table(name = "tblInformacaoPrefeitoAcordo")
@SuppressWarnings("serial")
public class Tblinformacaoprefeitoacordo extends IndexableEntity{

    @Column(name = "IdTipoAcordo")
    private Integer idtipoacordo;
    @Column(name = "QuaisOutros")
    private String quaisoutros;
    @Column(name = "RealizaTransporteEscolar")
    private String realizatransporteescolar;
    @Id
    @Column(name = "IdFormulario")
    private String idformulario;

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

    public void setQuaisoutros(String quaisoutros){
        this.quaisoutros = quaisoutros;
    }

    public String getQuaisoutros(){
        return quaisoutros;
    }

    public void setRealizatransporteescolar(String realizatransporteescolar){
        this.realizatransporteescolar = realizatransporteescolar;
    }

    public String getRealizatransporteescolar(){
        return realizatransporteescolar;
    }

    public void setIdformulario(String idformulario){
        this.idformulario = idformulario;
    }

    public String getIdformulario(){
        return idformulario;
    }


}
