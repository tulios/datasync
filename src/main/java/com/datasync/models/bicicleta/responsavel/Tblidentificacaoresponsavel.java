package com.datasync.models.bicicleta.responsavel;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;

import com.datasync.models.IndexableEntity;

@Entity
@Table(name = "tblIdentificacaoResponsavel")
@SuppressWarnings("serial")
public class Tblidentificacaoresponsavel extends IndexableEntity{

    @Id
    @Column(name = "IdFormulario")
    private String idformulario;
    @Column(name = "Parentesco")
    private Integer parentesco;
    @Column(name = "QualParentesco")
    private String qualparentesco;
    @Column(name = "Idade")
    private Integer idade;
    @Column(name = "Escolaridade")
    private Integer escolaridade;
    @Column(name = "Especialidade")
    private String especialidade;

    @Override
    public String getIdColumnName() {
        return "idformulario";
    }

    @Override
    public String getIndexId() {
        return getIdformulario();
    }

    public void setIdformulario(String idformulario){
        this.idformulario = idformulario;
    }

    public String getIdformulario(){
        return idformulario;
    }

    public void setParentesco(Integer parentesco){
        this.parentesco = parentesco;
    }

    public Integer getParentesco(){
        return parentesco;
    }

    public void setQualparentesco(String qualparentesco){
        this.qualparentesco = qualparentesco;
    }

    public String getQualparentesco(){
        return qualparentesco;
    }

    public void setIdade(Integer idade){
        this.idade = idade;
    }

    public Integer getIdade(){
        return idade;
    }

    public void setEscolaridade(Integer escolaridade){
        this.escolaridade = escolaridade;
    }

    public Integer getEscolaridade(){
        return escolaridade;
    }

    public void setEspecialidade(String especialidade){
        this.especialidade = especialidade;
    }

    public String getEspecialidade(){
        return especialidade;
    }


}
