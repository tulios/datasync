package com.datasync.models.barco.prefeito;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;

import com.datasync.models.IndexableEntity;

@Entity
@Table(name = "tblInformacaoPrefeitoPublicoAlvo")
@SuppressWarnings("serial")
public class Tblinformacaoprefeitopublicoalvo extends IndexableEntity{

    @Column(name = "IdTipoPublicoAlvo")
    private Integer idtipopublicoalvo;
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
		return getIdformulario()+"#"+getIdtipopublicoalvo();
	}

	@Override
	public boolean isCompoundKey() {
		return true;
	}

	@Override
	public String getCompoundIdColumnName() {
		return "idtipopublicoalvo";
	}

    public void setIdtipopublicoalvo(Integer idtipopublicoalvo){
        this.idtipopublicoalvo = idtipopublicoalvo;
    }

    public Integer getIdtipopublicoalvo(){
        return idtipopublicoalvo;
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
