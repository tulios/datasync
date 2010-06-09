package com.datasync.models.bicicleta.professor;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;

import com.datasync.models.IndexableEntity;

@Entity
@Table(name = "tblProfessorComoAlunosVaoEscola")
@SuppressWarnings("serial")
public class Tblprofessorcomoalunosvaoescola extends IndexableEntity{

    @Id
    @Column(name = "IdFormulario")
    private String idformulario;
    @Column(name = "IdTipoComoVaoEscola")
    private Integer idtipocomovaoescola;
    @Column(name = "QuaisOutros")
    private String quaisoutros;

    @Override
    public boolean isCompoundKey() {
    	return true;
    }
    
    @Override
    public String getCompoundIdColumnName() {
    	return "IdTipoComoVaoEscola";
    }
    
    @Override
    public String getIdColumnName() {
        return "idformulario";
    }

    @Override
    public String getIndexId() {
        return getIdformulario() +  "#" + getIdtipocomovaoescola();
    }

    public void setIdformulario(String idformulario){
        this.idformulario = idformulario;
    }

    public String getIdformulario(){
        return idformulario;
    }

    public void setIdtipocomovaoescola(Integer idtipocomovaoescola){
        this.idtipocomovaoescola = idtipocomovaoescola;
    }

    public Integer getIdtipocomovaoescola(){
        return idtipocomovaoescola;
    }

    public void setQuaisoutros(String quaisoutros){
        this.quaisoutros = quaisoutros;
    }

    public String getQuaisoutros(){
        return quaisoutros;
    }


}
