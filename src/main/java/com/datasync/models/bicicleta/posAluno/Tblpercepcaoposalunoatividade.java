package com.datasync.models.bicicleta.posAluno;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;

import com.datasync.models.IndexableEntity;

@Entity
@Table(name = "tblPercepcaoPosAlunoAtividade")
@SuppressWarnings("serial")
public class Tblpercepcaoposalunoatividade extends IndexableEntity{

    @Column(name = "IdTipoAtividade")
    private Integer idtipoatividade;
    @Id
    @Column(name = "IdFormulario")
    private String idformulario;
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
        return getIdformulario() + "#" + getIdtipoatividade();
    }

    public void setIdtipoatividade(Integer idtipoatividade){
        this.idtipoatividade = idtipoatividade;
    }

    public Integer getIdtipoatividade(){
        return idtipoatividade;
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
