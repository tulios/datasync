package com.datasync.models.bicicleta.alunoSemBike;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;

import com.datasync.models.IndexableEntity;

@Entity
@Table(name = "tblMotivoNaoUtilizacao")
@SuppressWarnings("serial")
public class Tblmotivonaoutilizacao extends IndexableEntity{

    @Id
    @Column(name = "IdFormulario")
    private String idformulario;
    @Column(name = "IdTipoMotivoUtilizacao")
    private Integer idtipomotivoutilizacao;
    @Column(name = "OutroMotivoNaoUtilizacao")
    private String outromotivonaoutilizacao;

    @Override
    public boolean isCompoundKey() {
    	return true;
    }
    
    @Override
    public String getIdColumnName() {
        return "idformulario";
    }

    @Override
    public String getIndexId() {
        return getIdformulario() + "#" + getIdtipomotivoutilizacao();
    }

    public void setIdformulario(String idformulario){
        this.idformulario = idformulario;
    }

    public String getIdformulario(){
        return idformulario;
    }

    public void setIdtipomotivoutilizacao(Integer idtipomotivoutilizacao){
        this.idtipomotivoutilizacao = idtipomotivoutilizacao;
    }

    public Integer getIdtipomotivoutilizacao(){
        return idtipomotivoutilizacao;
    }

    public void setOutromotivonaoutilizacao(String outromotivonaoutilizacao){
        this.outromotivonaoutilizacao = outromotivonaoutilizacao;
    }

    public String getOutromotivonaoutilizacao(){
        return outromotivonaoutilizacao;
    }


}
