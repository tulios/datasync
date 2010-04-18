package com.datasync.models.barco.pais;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;

import com.datasync.models.IndexableEntity;

@Entity
@Table(name = "tblCaracterizacaoFamiliaPais")
@SuppressWarnings("serial")
public class Tblcaracterizacaofamiliapais extends IndexableEntity{

    @Id
    @Column(name = "IdFormulario")
    private String idformulario;
    @Column(name = "OcupacaoPai")
    private String ocupacaopai;
    @Column(name = "OcupacaoMae")
    private String ocupacaomae;
    @Column(name = "QuantidadeFilhos")
    private Integer quantidadefilhos;
    @Column(name = "QuantidadeFilhosIdadeEscolar")
    private Integer quantidadefilhosidadeescolar;
    @Column(name = "QuantidadeAjudamSustento")
    private Integer quantidadeajudamsustento;
    @Column(name = "QuantidadeFamilia")
    private int quantidadeFamilia;

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

    public void setOcupacaopai(String ocupacaopai){
        this.ocupacaopai = ocupacaopai;
    }

    public String getOcupacaopai(){
        return ocupacaopai;
    }

    public void setOcupacaomae(String ocupacaomae){
        this.ocupacaomae = ocupacaomae;
    }

    public String getOcupacaomae(){
        return ocupacaomae;
    }

    public void setQuantidadefilhos(Integer quantidadefilhos){
        this.quantidadefilhos = quantidadefilhos;
    }

    public Integer getQuantidadefilhos(){
        return quantidadefilhos;
    }

    public void setQuantidadefilhosidadeescolar(Integer quantidadefilhosidadeescolar){
        this.quantidadefilhosidadeescolar = quantidadefilhosidadeescolar;
    }

    public Integer getQuantidadefilhosidadeescolar(){
        return quantidadefilhosidadeescolar;
    }

    public void setQuantidadeajudamsustento(Integer quantidadeajudamsustento){
        this.quantidadeajudamsustento = quantidadeajudamsustento;
    }

    public Integer getQuantidadeajudamsustento(){
        return quantidadeajudamsustento;
    }

	public int getQuantidadeFamilia() {
		return quantidadeFamilia;
	}

	public void setQuantidadeFamilia(int quantidadeFamilia) {
		this.quantidadeFamilia = quantidadeFamilia;
	}

}
