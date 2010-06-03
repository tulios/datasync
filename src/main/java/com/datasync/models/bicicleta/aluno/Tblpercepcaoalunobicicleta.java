package com.datasync.models.bicicleta.aluno;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;

import com.datasync.models.IndexableEntity;

@Entity
@Table(name = "tblPercepcaoAlunoBicicleta")
@SuppressWarnings("serial")
public class Tblpercepcaoalunobicicleta extends IndexableEntity{

    @Id
    @Column(name = "IdFormulario")
    private String idformulario;
    @Column(name = "NivelSatisfacaoBicicleta")
    private Integer nivelsatisfacaobicicleta;
    @Column(name = "QualOutroNivelSatisfacaoBicicleta")
    private String qualoutronivelsatisfacaobicicleta;
    @Column(name = "NivelSatisfacaoEquipamento")
    private Integer nivelsatisfacaoequipamento;
    @Column(name = "QualOutroNivelSatisfacaoEquipamento")
    private String qualoutronivelsatisfacaoequipamento;
    @Column(name = "ObservacaoFormularioAluno")
    private String observacaoformularioaluno;

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

    public void setNivelsatisfacaobicicleta(Integer nivelsatisfacaobicicleta){
        this.nivelsatisfacaobicicleta = nivelsatisfacaobicicleta;
    }

    public Integer getNivelsatisfacaobicicleta(){
        return nivelsatisfacaobicicleta;
    }

    public void setQualoutronivelsatisfacaobicicleta(String qualoutronivelsatisfacaobicicleta){
        this.qualoutronivelsatisfacaobicicleta = qualoutronivelsatisfacaobicicleta;
    }

    public String getQualoutronivelsatisfacaobicicleta(){
        return qualoutronivelsatisfacaobicicleta;
    }

    public void setNivelsatisfacaoequipamento(Integer nivelsatisfacaoequipamento){
        this.nivelsatisfacaoequipamento = nivelsatisfacaoequipamento;
    }

    public Integer getNivelsatisfacaoequipamento(){
        return nivelsatisfacaoequipamento;
    }

    public void setQualoutronivelsatisfacaoequipamento(String qualoutronivelsatisfacaoequipamento){
        this.qualoutronivelsatisfacaoequipamento = qualoutronivelsatisfacaoequipamento;
    }

    public String getQualoutronivelsatisfacaoequipamento(){
        return qualoutronivelsatisfacaoequipamento;
    }

    public void setObservacaoformularioaluno(String observacaoformularioaluno){
        this.observacaoformularioaluno = observacaoformularioaluno;
    }

    public String getObservacaoformularioaluno(){
        return observacaoformularioaluno;
    }


}
