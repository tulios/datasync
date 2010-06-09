package com.datasync.models.bicicleta.aluno;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;

import com.datasync.models.IndexableEntity;

@Entity
@Table(name = "tblMotivoUtilizacao")
@SuppressWarnings("serial")
public class Tblmotivoutilizacao extends IndexableEntity{

    @Id
    @Column(name = "IdFormulario")
    private String idformulario;
    @Column(name = "IdTipoMotivoUtilizacao")
    private Integer idtipomotivoutilizacao;
    @Column(name = "OutroMotivoUtilizacao")
    private String outromotivoutilizacao;

    @Override
    public boolean isCompoundKey() {
    	return true;
    }
    
    @Override
    public String getCompoundIdColumnName() {
    	return "IdTipoMotivoUtilizacao";
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

    public void setOutromotivoutilizacao(String outromotivoutilizacao){
        this.outromotivoutilizacao = outromotivoutilizacao;
    }

    public String getOutromotivoutilizacao(){
        return outromotivoutilizacao;
    }


}
