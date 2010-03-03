package com.datasync.models.barco.diretor;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;

import com.datasync.models.IndexableEntity;

@Entity
@Table(name = "tblIdentificacaoEscola")
@SuppressWarnings("serial")
public class Tblidentificacaoescola extends IndexableEntity{

    @Id
    @Column(name = "IdFormulario")
    private String idformulario;
    @Column(name = "QuantidadeComunidade")
    private Integer quantidadecomunidade;
    @Column(name = "QuaisComunidades")
    private String quaiscomunidades;
    @Column(name = "QuantidadeAluno")
    private Integer quantidadealuno;
    @Column(name = "QuantidadeAlunoBarco")
    private Integer quantidadealunobarco;
    @Column(name = "QuantidadeRota")
    private Integer quantidaderota;

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

    public void setQuantidadecomunidade(Integer quantidadecomunidade){
        this.quantidadecomunidade = quantidadecomunidade;
    }

    public Integer getQuantidadecomunidade(){
        return quantidadecomunidade;
    }

    public void setQuaiscomunidades(String quaiscomunidades){
        this.quaiscomunidades = quaiscomunidades;
    }

    public String getQuaiscomunidades(){
        return quaiscomunidades;
    }

    public void setQuantidadealuno(Integer quantidadealuno){
        this.quantidadealuno = quantidadealuno;
    }

    public Integer getQuantidadealuno(){
        return quantidadealuno;
    }

    public void setQuantidadealunobarco(Integer quantidadealunobarco){
        this.quantidadealunobarco = quantidadealunobarco;
    }

    public Integer getQuantidadealunobarco(){
        return quantidadealunobarco;
    }

    public void setQuantidaderota(Integer quantidaderota){
        this.quantidaderota = quantidaderota;
    }

    public Integer getQuantidaderota(){
        return quantidaderota;
    }


}
