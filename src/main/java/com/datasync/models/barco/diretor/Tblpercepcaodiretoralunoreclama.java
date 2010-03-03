package com.datasync.models.barco.diretor;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;

import com.datasync.models.IndexableEntity;

@Entity
@Table(name = "tblPercepcaoDiretorAlunoReclama")
@SuppressWarnings("serial")
public class Tblpercepcaodiretoralunoreclama extends IndexableEntity{

    @Column(name = "IdTipoReclamacao")
    private Integer idtiporeclamacao;
    @Id
    @Column(name = "IdFormulario")
    private String idformulario;
    @Column(name = "AlunoReclama")
    private String alunoreclama;
    @Column(name = "QuaisOutros")
    private String quaisoutros;

    @Override
    public String getIdColumnName() {
        return "idformulario";
    }

    @Override
	public String getIndexId() {
		return getIdformulario()+"#"+getIdtiporeclamacao();
	}

	@Override
    public boolean isCompoundKey() {
    	return true;
    }
    
    @Override
    public String getCompoundIdColumnName() {
    	return "IdTipoReclamacao";
    }

    public void setIdtiporeclamacao(Integer idtiporeclamacao){
        this.idtiporeclamacao = idtiporeclamacao;
    }

    public Integer getIdtiporeclamacao(){
        return idtiporeclamacao;
    }

    public void setIdformulario(String idformulario){
        this.idformulario = idformulario;
    }

    public String getIdformulario(){
        return idformulario;
    }

    public void setAlunoreclama(String alunoreclama){
        this.alunoreclama = alunoreclama;
    }

    public String getAlunoreclama(){
        return alunoreclama;
    }

    public void setQuaisoutros(String quaisoutros){
        this.quaisoutros = quaisoutros;
    }

    public String getQuaisoutros(){
        return quaisoutros;
    }


}
