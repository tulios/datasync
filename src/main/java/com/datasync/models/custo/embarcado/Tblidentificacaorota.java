package com.datasync.models.custo.embarcado;

import java.sql.Timestamp;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;

import com.datasync.models.IndexableEntity;

@Entity
@Table(name = "tblIdentificacaoRota")
@SuppressWarnings("serial")
public class Tblidentificacaorota extends IndexableEntity{

    @Id
    @Column(name = "IdFormulario")
    private String idformulario;
    @Column(name = "DataColeta")
    private Timestamp datacoleta;
    @Column(name = "TipoTrecho")
    private Integer tipotrecho;
    @Column(name = "InicioGPS")
    private String iniciogps;
    @Column(name = "TerminoGPS")
    private String terminogps;
    @Column(name = "HoraInicio")
    private String horainicio;
    @Column(name = "HoraTermino")
    private String horatermino;
    @Column(name = "MedidorLitros")
    private double medidorlitros;
    @Column(name = "Inicio")
    private String inicio;
    @Column(name = "Termino")
    private String termino;
    @Column(name = "Turno")
    private Integer turno;

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

    public void setDatacoleta(Timestamp datacoleta){
        this.datacoleta = datacoleta;
    }

    public Timestamp getDatacoleta(){
        return datacoleta;
    }

    public void setTipotrecho(Integer tipotrecho){
        this.tipotrecho = tipotrecho;
    }

    public Integer getTipotrecho(){
        return tipotrecho;
    }

    public void setIniciogps(String iniciogps){
        this.iniciogps = iniciogps;
    }

    public String getIniciogps(){
        return iniciogps;
    }

    public void setTerminogps(String terminogps){
        this.terminogps = terminogps;
    }

    public String getTerminogps(){
        return terminogps;
    }

    public void setHorainicio(String horainicio){
        this.horainicio = horainicio;
    }

    public String getHorainicio(){
        return horainicio;
    }

    public void setHoratermino(String horatermino){
        this.horatermino = horatermino;
    }

    public String getHoratermino(){
        return horatermino;
    }

    public void setMedidorlitros(double medidorlitros){
        this.medidorlitros = medidorlitros;
    }

    public double getMedidorlitros(){
        return medidorlitros;
    }

    public void setInicio(String inicio){
        this.inicio = inicio;
    }

    public String getInicio(){
        return inicio;
    }

    public void setTermino(String termino){
        this.termino = termino;
    }

    public String getTermino(){
        return termino;
    }

    public void setTurno(Integer turno){
        this.turno = turno;
    }

    public Integer getTurno(){
        return turno;
    }


}
