package com.datasync.models.barco.diretor;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;

import com.datasync.models.IndexableEntity;

@Entity
@Table(name = "tblIdentificacaoEscolaPlanejamentoRota")
@SuppressWarnings("serial")
public class Tblidentificacaoescolaplanejamentorota extends IndexableEntity{

    @Column(name = "IdTipoResposta")
    private Integer idtiporesposta;
    @Id
    @Column(name = "IdFormulario")
    private String idformulario;
    @Column(name = "QuaisOutros")
    private String quaisoutros;

    @Override
    public String getIdColumnName() {
        return "idformulario";
    }

    @Override
	public String getIndexId() {
		return getIdformulario()+"#"+getIdtiporesposta();
	}

	@Override
    public boolean isCompoundKey() {
    	return true;
    }
    
    @Override
    public String getCompoundIdColumnName() {
    	return "IdTipoResposta";
    }

    public void setIdtiporesposta(Integer idtiporesposta){
        this.idtiporesposta = idtiporesposta;
    }

    public Integer getIdtiporesposta(){
        return idtiporesposta;
    }

    public void setIdformulario(String idformulario){
        this.idformulario = idformulario;
    }

    public String getIdformulario(){
        return idformulario;
    }

    public void setQuaisoutros(String quaisoutros){
        this.quaisoutros = quaisoutros;
    }

    public String getQuaisoutros(){
        return quaisoutros;
    }


}
