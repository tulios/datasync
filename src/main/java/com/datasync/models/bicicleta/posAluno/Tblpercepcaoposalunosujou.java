package com.datasync.models.bicicleta.posAluno;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;

import com.datasync.models.IndexableEntity;

@Entity
@Table(name = "tblPercepcaoPosAlunoSujou")
@SuppressWarnings("serial")
public class Tblpercepcaoposalunosujou extends IndexableEntity{

    @Id
    @Column(name = "IdFormulario")
    private String idformulario;
    @Column(name = "IdTipoSujou")
    private Integer idtiposujou;
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
        return getIdformulario() + "#" + getIdtiposujou();
    }

    public void setIdformulario(String idformulario){
        this.idformulario = idformulario;
    }

    public String getIdformulario(){
        return idformulario;
    }

    public void setIdtiposujou(Integer idtiposujou){
        this.idtiposujou = idtiposujou;
    }

    public Integer getIdtiposujou(){
        return idtiposujou;
    }

    public void setQuaisoutros(String quaisoutros){
        this.quaisoutros = quaisoutros;
    }

    public String getQuaisoutros(){
        return quaisoutros;
    }


}
