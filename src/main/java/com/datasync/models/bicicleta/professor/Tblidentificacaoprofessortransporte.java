package com.datasync.models.bicicleta.professor;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;

import com.datasync.models.IndexableEntity;

@Entity
@Table(name = "tblIdentificacaoProfessorTransporte")
@SuppressWarnings("serial")
public class Tblidentificacaoprofessortransporte extends IndexableEntity{

    @Id
    @Column(name = "IdFormulario")
    private String idformulario;
    @Column(name = "UtilizamTransporteEscolarPublico")
    private String utilizamtransporteescolarpublico;
    @Column(name = "QuantosUsamTransporte")
    private Integer quantosusamtransporte;
    @Column(name = "QuantosUsamBicicleta")
    private Integer quantosusambicicleta;
    @Column(name = "ComoUtilizamBicicleta")
    private Integer comoutilizambicicleta;
    @Column(name = "QuemUtilizaBicicleta")
    private Integer quemutilizabicicleta;
    @Column(name = "QualVisaoAmigos")
    private Integer qualvisaoamigos;
    @Column(name = "IdadeMinimaBicicleta")
    private Integer idademinimabicicleta;
    @Column(name = "ResponsavelControlarUso")
    private String responsavelcontrolaruso;
    @Column(name = "QuemResponsavelControlarUso")
    private String quemresponsavelcontrolaruso;
    @Column(name = "ExisteAtividadeBicicleta")
    private String existeatividadebicicleta;
    @Column(name = "QualAtividadeBicicleta")
    private String qualatividadebicicleta;
    @Column(name = "QuantidadeFuncionariosUtilizamBicicleta")
    private Integer quantidadefuncionariosutilizambicicleta;
    @Column(name = "DonoBicicleta")
    private Integer donobicicleta;
    @Column(name = "QuemDonoBicicleta")
    private String quemdonobicicleta;
    @Column(name = "ResponsavelManutencao")
    private Integer responsavelmanutencao;
    @Column(name = "QuemResponsavelManutencao")
    private String quemresponsavelmanutencao;

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

    public void setUtilizamtransporteescolarpublico(String utilizamtransporteescolarpublico){
        this.utilizamtransporteescolarpublico = utilizamtransporteescolarpublico;
    }

    public String getUtilizamtransporteescolarpublico(){
        return utilizamtransporteescolarpublico;
    }

    public void setQuantosusamtransporte(Integer quantosusamtransporte){
        this.quantosusamtransporte = quantosusamtransporte;
    }

    public Integer getQuantosusamtransporte(){
        return quantosusamtransporte;
    }

    public void setQuantosusambicicleta(Integer quantosusambicicleta){
        this.quantosusambicicleta = quantosusambicicleta;
    }

    public Integer getQuantosusambicicleta(){
        return quantosusambicicleta;
    }

    public void setComoutilizambicicleta(Integer comoutilizambicicleta){
        this.comoutilizambicicleta = comoutilizambicicleta;
    }

    public Integer getComoutilizambicicleta(){
        return comoutilizambicicleta;
    }

    public void setQuemutilizabicicleta(Integer quemutilizabicicleta){
        this.quemutilizabicicleta = quemutilizabicicleta;
    }

    public Integer getQuemutilizabicicleta(){
        return quemutilizabicicleta;
    }

    public void setQualvisaoamigos(Integer qualvisaoamigos){
        this.qualvisaoamigos = qualvisaoamigos;
    }

    public Integer getQualvisaoamigos(){
        return qualvisaoamigos;
    }

    public void setIdademinimabicicleta(Integer idademinimabicicleta){
        this.idademinimabicicleta = idademinimabicicleta;
    }

    public Integer getIdademinimabicicleta(){
        return idademinimabicicleta;
    }

    public void setResponsavelcontrolaruso(String responsavelcontrolaruso){
        this.responsavelcontrolaruso = responsavelcontrolaruso;
    }

    public String getResponsavelcontrolaruso(){
        return responsavelcontrolaruso;
    }

    public void setQuemresponsavelcontrolaruso(String quemresponsavelcontrolaruso){
        this.quemresponsavelcontrolaruso = quemresponsavelcontrolaruso;
    }

    public String getQuemresponsavelcontrolaruso(){
        return quemresponsavelcontrolaruso;
    }

    public void setExisteatividadebicicleta(String existeatividadebicicleta){
        this.existeatividadebicicleta = existeatividadebicicleta;
    }

    public String getExisteatividadebicicleta(){
        return existeatividadebicicleta;
    }

    public void setQualatividadebicicleta(String qualatividadebicicleta){
        this.qualatividadebicicleta = qualatividadebicicleta;
    }

    public String getQualatividadebicicleta(){
        return qualatividadebicicleta;
    }

    public void setQuantidadefuncionariosutilizambicicleta(Integer quantidadefuncionariosutilizambicicleta){
        this.quantidadefuncionariosutilizambicicleta = quantidadefuncionariosutilizambicicleta;
    }

    public Integer getQuantidadefuncionariosutilizambicicleta(){
        return quantidadefuncionariosutilizambicicleta;
    }

    public void setDonobicicleta(Integer donobicicleta){
        this.donobicicleta = donobicicleta;
    }

    public Integer getDonobicicleta(){
        return donobicicleta;
    }

    public void setQuemdonobicicleta(String quemdonobicicleta){
        this.quemdonobicicleta = quemdonobicicleta;
    }

    public String getQuemdonobicicleta(){
        return quemdonobicicleta;
    }

    public void setResponsavelmanutencao(Integer responsavelmanutencao){
        this.responsavelmanutencao = responsavelmanutencao;
    }

    public Integer getResponsavelmanutencao(){
        return responsavelmanutencao;
    }

    public void setQuemresponsavelmanutencao(String quemresponsavelmanutencao){
        this.quemresponsavelmanutencao = quemresponsavelmanutencao;
    }

    public String getQuemresponsavelmanutencao(){
        return quemresponsavelmanutencao;
    }


}
