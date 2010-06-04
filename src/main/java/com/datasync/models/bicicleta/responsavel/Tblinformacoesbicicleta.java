package com.datasync.models.bicicleta.responsavel;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;

import com.datasync.models.IndexableEntity;

@Entity
@Table(name = "tblInformacoesBicicleta")
@SuppressWarnings("serial")
public class Tblinformacoesbicicleta extends IndexableEntity{

    @Id
    @Column(name = "IdFormulario")
    private String idformulario;
    @Column(name = "ExisteBicicletaNaResidencia")
    private String existebicicletanaresidencia;
    @Column(name = "QuantasBicicletas")
    private Integer quantasbicicletas;
    @Column(name = "QuantasPessoasUtilizamBicicletaNaCasa")
    private Integer quantaspessoasutilizambicicletanacasa;
    @Column(name = "QuantasPessoasUtilizamBicicletaIrEscola")
    private Integer quantaspessoasutilizambicicletairescola;
    @Column(name = "QuemForneceuBicicleta")
    private Integer quemforneceubicicleta;
    @Column(name = "LevaCarona")
    private String levacarona;
    @Column(name = "TransportaCarga")
    private String transportacarga;
    @Column(name = "PodeSerRoubada")
    private String podeserroubada;
    @Column(name = "IdadeMinima")
    private Integer idademinima;
    @Column(name = "PodePagarManutencao")
    private String podepagarmanutencao;

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

    public void setExistebicicletanaresidencia(String existebicicletanaresidencia){
        this.existebicicletanaresidencia = existebicicletanaresidencia;
    }

    public String getExistebicicletanaresidencia(){
        return existebicicletanaresidencia;
    }

    public void setQuantasbicicletas(Integer quantasbicicletas){
        this.quantasbicicletas = quantasbicicletas;
    }

    public Integer getQuantasbicicletas(){
        return quantasbicicletas;
    }

    public void setQuantaspessoasutilizambicicletanacasa(Integer quantaspessoasutilizambicicletanacasa){
        this.quantaspessoasutilizambicicletanacasa = quantaspessoasutilizambicicletanacasa;
    }

    public Integer getQuantaspessoasutilizambicicletanacasa(){
        return quantaspessoasutilizambicicletanacasa;
    }

    public void setQuantaspessoasutilizambicicletairescola(Integer quantaspessoasutilizambicicletairescola){
        this.quantaspessoasutilizambicicletairescola = quantaspessoasutilizambicicletairescola;
    }

    public Integer getQuantaspessoasutilizambicicletairescola(){
        return quantaspessoasutilizambicicletairescola;
    }

    public void setQuemforneceubicicleta(Integer quemforneceubicicleta){
        this.quemforneceubicicleta = quemforneceubicicleta;
    }

    public Integer getQuemforneceubicicleta(){
        return quemforneceubicicleta;
    }

    public void setLevacarona(String levacarona){
        this.levacarona = levacarona;
    }

    public String getLevacarona(){
        return levacarona;
    }

    public void setTransportacarga(String transportacarga){
        this.transportacarga = transportacarga;
    }

    public String getTransportacarga(){
        return transportacarga;
    }

    public void setPodeserroubada(String podeserroubada){
        this.podeserroubada = podeserroubada;
    }

    public String getPodeserroubada(){
        return podeserroubada;
    }

    public void setIdademinima(Integer idademinima){
        this.idademinima = idademinima;
    }

    public Integer getIdademinima(){
        return idademinima;
    }

    public void setPodepagarmanutencao(String podepagarmanutencao){
        this.podepagarmanutencao = podepagarmanutencao;
    }

    public String getPodepagarmanutencao(){
        return podepagarmanutencao;
    }


}
