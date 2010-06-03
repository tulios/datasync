package com.datasync.models.bicicleta.posAluno;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;

import com.datasync.models.IndexableEntity;

@Entity
@Table(name = "tblPercepcaoPosAlunoEmpura")
@SuppressWarnings("serial")
public class Tblpercepcaoposalunoempura extends IndexableEntity{

    @Id
    @Column(name = "IdFormulario")
    private String idformulario;
    @Column(name = "IdTipoEmpurra")
    private Integer idtipoempurra;
    @Column(name = "QuaisOutros")
    private String quaisoutros;

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
        return getIdformulario() + "#" + getIdtipoempurra();
    }

    public void setIdformulario(String idformulario){
        this.idformulario = idformulario;
    }

    public String getIdformulario(){
        return idformulario;
    }

    public void setIdtipoempurra(Integer idtipoempurra){
        this.idtipoempurra = idtipoempurra;
    }

    public Integer getIdtipoempurra(){
        return idtipoempurra;
    }

    public void setQuaisoutros(String quaisoutros){
        this.quaisoutros = quaisoutros;
    }

    public String getQuaisoutros(){
        return quaisoutros;
    }


}
