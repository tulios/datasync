package com.datasync.models.custo.embarcado;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;

import com.datasync.models.IndexableEntity;

@Entity
@Table(name = "tblSobeDesce")
@SuppressWarnings("serial")
public class Tblsobedesce extends IndexableEntity{

    @Column(name = "CodigoPonto")
    private Integer codigoponto;
    @Id
    @Column(name = "IdFormulario")
    private String idformulario;
    @Column(name = "QuantidadeAlunoSobe")
    private Integer quantidadealunosobe;
    @Column(name = "QuantidadeCaronaSobe")
    private Integer quantidadecaronasobe;
    @Column(name = "QuantidadeAlunoDesce")
    private Integer quantidadealunodesce;
    @Column(name = "QuantidadeCaronasDesce")
    private Integer quantidadecaronasdesce;

    @Override
    public String getIdColumnName() {
        return "idformulario";
    }

    @Override
    public String getIndexId() {
        return getIdformulario();
    }

    public void setCodigoponto(Integer codigoponto){
        this.codigoponto = codigoponto;
    }

    public Integer getCodigoponto(){
        return codigoponto;
    }

    public void setIdformulario(String idformulario){
        this.idformulario = idformulario;
    }

    public String getIdformulario(){
        return idformulario;
    }

    public void setQuantidadealunosobe(Integer quantidadealunosobe){
        this.quantidadealunosobe = quantidadealunosobe;
    }

    public Integer getQuantidadealunosobe(){
        return quantidadealunosobe;
    }

    public void setQuantidadecaronasobe(Integer quantidadecaronasobe){
        this.quantidadecaronasobe = quantidadecaronasobe;
    }

    public Integer getQuantidadecaronasobe(){
        return quantidadecaronasobe;
    }

    public void setQuantidadealunodesce(Integer quantidadealunodesce){
        this.quantidadealunodesce = quantidadealunodesce;
    }

    public Integer getQuantidadealunodesce(){
        return quantidadealunodesce;
    }

    public void setQuantidadecaronasdesce(Integer quantidadecaronasdesce){
        this.quantidadecaronasdesce = quantidadecaronasdesce;
    }

    public Integer getQuantidadecaronasdesce(){
        return quantidadecaronasdesce;
    }


}
