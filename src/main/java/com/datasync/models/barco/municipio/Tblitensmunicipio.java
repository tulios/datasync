package com.datasync.models.barco.municipio;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;

import com.datasync.models.IndexableEntity;

@Entity
@Table(name = "tblItensMunicipio")
@SuppressWarnings("serial")
public class Tblitensmunicipio extends IndexableEntity{

    @Id
    @Column(name = "IdFormulario")
    private String idformulario;
    @Column(name = "PossuiBanco")
    private String possuibanco;
    @Column(name = "QuantidadeBanco")
    private Integer quantidadebanco;
    @Column(name = "FotoBanco1")
    private String fotobanco1;
    @Column(name = "FotoBanco2")
    private String fotobanco2;
    @Column(name = "PossuiLoterica")
    private String possuiloterica;
    @Column(name = "QuantidadeLoterica")
    private Integer quantidadeloterica;
    @Column(name = "FotoLoterica1")
    private String fotoloterica1;
    @Column(name = "FotoLoterica2")
    private String fotoloterica2;
    @Column(name = "PossuiCorreio")
    private String possuicorreio;
    @Column(name = "QuantidadeCorreios")
    private Integer quantidadecorreios;
    @Column(name = "FotoCorreio1")
    private String fotocorreio1;
    @Column(name = "FotoCorreio2")
    private String fotocorreio2;
    @Column(name = "PossuiLojaBarco")
    private String possuilojabarco;
    @Column(name = "QuantidadeLojaBarco")
    private Integer quantidadelojabarco;
    @Column(name = "FotoLojaBarco1")
    private String fotolojabarco1;
    @Column(name = "FotoLojaBarco2")
    private String fotolojabarco2;
    @Column(name = "PossuiLojaMotor")
    private String possuilojamotor;
    @Column(name = "QuantidadeLojaMotor")
    private Integer quantidadelojamotor;
    @Column(name = "FotoLojaMotor1")
    private String fotolojamotor1;
    @Column(name = "FotoLojaMotor2")
    private String fotolojamotor2;
    @Column(name = "PossuiLojaManutencao")
    private String possuilojamanutencao;
    @Column(name = "QuantidadeLojaManutencao")
    private Integer quantidadelojamanutencao;
    @Column(name = "FotoLojaManutencao1")
    private String fotolojamanutencao1;
    @Column(name = "FotoLojaManutencao2")
    private String fotolojamanutencao2;
    @Column(name = "PossuiLojaPeças")
    private String possuilojapeças;
    @Column(name = "QuantidadeLojaPeças")
    private Integer quantidadelojapeças;
    @Column(name = "FotoLojaPeças1")
    private String fotolojapeças1;
    @Column(name = "FotoLojaPeças2")
    private String fotolojapeças2;
    @Column(name = "PossuiRetifica")
    private String possuiretifica;
    @Column(name = "QuantidadeRetifica")
    private Integer quantidaderetifica;
    @Column(name = "FotoRetifica1")
    private String fotoretifica1;
    @Column(name = "FotoRetifica2")
    private String fotoretifica2;
    @Column(name = "PossuiOficina")
    private String possuioficina;
    @Column(name = "QuantidadeOficina")
    private Integer quantidadeoficina;
    @Column(name = "FotoOficina1")
    private String fotooficina1;
    @Column(name = "FotoOficina2")
    private String fotooficina2;
    @Column(name = "PossuiEstaleiro")
    private String possuiestaleiro;
    @Column(name = "QuantidadeEstaleiro")
    private Integer quantidadeestaleiro;
    @Column(name = "FotoEstaleiro1")
    private String fotoestaleiro1;
    @Column(name = "FotoEstaleiro2")
    private String fotoestaleiro2;
    @Column(name = "PossuiOficinaEletronicos")
    private String possuioficinaeletronicos;
    @Column(name = "QuantidadeOficinaEletronicos")
    private Integer quantidadeoficinaeletronicos;
    @Column(name = "FotoOficinaEletronicos1")
    private String fotooficinaeletronicos1;
    @Column(name = "FotoOficinaEletronicos2")
    private String fotooficinaeletronicos2;
    @Column(name = "PossuiLojaFerramentas")
    private String possuilojaferramentas;
    @Column(name = "QuantidadeLojaFerramentas")
    private Integer quantidadelojaferramentas;
    @Column(name = "ValorAluminio")
    private String valoraluminio;
    @Column(name = "UnidadeAluminio")
    private String unidadealuminio;
    @Column(name = "ValorEletrodo")
    private String valoreletrodo;
    @Column(name = "FotoLojaFerramentas1")
    private String fotolojaferramentas1;
    @Column(name = "FotoLojaFerramentas2")
    private String fotolojaferramentas2;
    @Column(name = "PossuiAssociacao")
    private String possuiassociacao;
    @Column(name = "QuantidadeAssociacao")
    private Integer quantidadeassociacao;
    @Column(name = "FotoAssociacao1")
    private String fotoassociacao1;
    @Column(name = "FotoAssociacao2")
    private String fotoassociacao2;
    @Column(name = "PossuiVHF")
    private String possuivhf;
    @Column(name = "QuantidadeVHF")
    private Integer quantidadevhf;
    @Column(name = "FotoVHF1")
    private String fotovhf1;
    @Column(name = "FotoVHF2")
    private String fotovhf2;
    @Column(name = "PossuiLanHouse")
    private String possuilanhouse;
    @Column(name = "QuantidadeLanHouse")
    private Integer quantidadelanhouse;
    @Column(name = "FotoLanHouse1")
    private String fotolanhouse1;
    @Column(name = "FotoLanHouse2")
    private String fotolanhouse2;

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

    public void setPossuibanco(String possuibanco){
        this.possuibanco = possuibanco;
    }

    public String getPossuibanco(){
        return possuibanco;
    }

    public void setQuantidadebanco(Integer quantidadebanco){
        this.quantidadebanco = quantidadebanco;
    }

    public Integer getQuantidadebanco(){
        return quantidadebanco;
    }

    public void setFotobanco1(String fotobanco1){
        this.fotobanco1 = fotobanco1;
    }

    public String getFotobanco1(){
        return fotobanco1;
    }

    public void setFotobanco2(String fotobanco2){
        this.fotobanco2 = fotobanco2;
    }

    public String getFotobanco2(){
        return fotobanco2;
    }

    public void setPossuiloterica(String possuiloterica){
        this.possuiloterica = possuiloterica;
    }

    public String getPossuiloterica(){
        return possuiloterica;
    }

    public void setQuantidadeloterica(Integer quantidadeloterica){
        this.quantidadeloterica = quantidadeloterica;
    }

    public Integer getQuantidadeloterica(){
        return quantidadeloterica;
    }

    public void setFotoloterica1(String fotoloterica1){
        this.fotoloterica1 = fotoloterica1;
    }

    public String getFotoloterica1(){
        return fotoloterica1;
    }

    public void setFotoloterica2(String fotoloterica2){
        this.fotoloterica2 = fotoloterica2;
    }

    public String getFotoloterica2(){
        return fotoloterica2;
    }

    public void setPossuicorreio(String possuicorreio){
        this.possuicorreio = possuicorreio;
    }

    public String getPossuicorreio(){
        return possuicorreio;
    }

    public void setQuantidadecorreios(Integer quantidadecorreios){
        this.quantidadecorreios = quantidadecorreios;
    }

    public Integer getQuantidadecorreios(){
        return quantidadecorreios;
    }

    public void setFotocorreio1(String fotocorreio1){
        this.fotocorreio1 = fotocorreio1;
    }

    public String getFotocorreio1(){
        return fotocorreio1;
    }

    public void setFotocorreio2(String fotocorreio2){
        this.fotocorreio2 = fotocorreio2;
    }

    public String getFotocorreio2(){
        return fotocorreio2;
    }

    public void setPossuilojabarco(String possuilojabarco){
        this.possuilojabarco = possuilojabarco;
    }

    public String getPossuilojabarco(){
        return possuilojabarco;
    }

    public void setQuantidadelojabarco(Integer quantidadelojabarco){
        this.quantidadelojabarco = quantidadelojabarco;
    }

    public Integer getQuantidadelojabarco(){
        return quantidadelojabarco;
    }

    public void setFotolojabarco1(String fotolojabarco1){
        this.fotolojabarco1 = fotolojabarco1;
    }

    public String getFotolojabarco1(){
        return fotolojabarco1;
    }

    public void setFotolojabarco2(String fotolojabarco2){
        this.fotolojabarco2 = fotolojabarco2;
    }

    public String getFotolojabarco2(){
        return fotolojabarco2;
    }

    public void setPossuilojamotor(String possuilojamotor){
        this.possuilojamotor = possuilojamotor;
    }

    public String getPossuilojamotor(){
        return possuilojamotor;
    }

    public void setQuantidadelojamotor(Integer quantidadelojamotor){
        this.quantidadelojamotor = quantidadelojamotor;
    }

    public Integer getQuantidadelojamotor(){
        return quantidadelojamotor;
    }

    public void setFotolojamotor1(String fotolojamotor1){
        this.fotolojamotor1 = fotolojamotor1;
    }

    public String getFotolojamotor1(){
        return fotolojamotor1;
    }

    public void setFotolojamotor2(String fotolojamotor2){
        this.fotolojamotor2 = fotolojamotor2;
    }

    public String getFotolojamotor2(){
        return fotolojamotor2;
    }

    public void setPossuilojamanutencao(String possuilojamanutencao){
        this.possuilojamanutencao = possuilojamanutencao;
    }

    public String getPossuilojamanutencao(){
        return possuilojamanutencao;
    }

    public void setQuantidadelojamanutencao(Integer quantidadelojamanutencao){
        this.quantidadelojamanutencao = quantidadelojamanutencao;
    }

    public Integer getQuantidadelojamanutencao(){
        return quantidadelojamanutencao;
    }

    public void setFotolojamanutencao1(String fotolojamanutencao1){
        this.fotolojamanutencao1 = fotolojamanutencao1;
    }

    public String getFotolojamanutencao1(){
        return fotolojamanutencao1;
    }

    public void setFotolojamanutencao2(String fotolojamanutencao2){
        this.fotolojamanutencao2 = fotolojamanutencao2;
    }

    public String getFotolojamanutencao2(){
        return fotolojamanutencao2;
    }

    public void setPossuilojapeças(String possuilojapeças){
        this.possuilojapeças = possuilojapeças;
    }

    public String getPossuilojapeças(){
        return possuilojapeças;
    }

    public void setQuantidadelojapeças(Integer quantidadelojapeças){
        this.quantidadelojapeças = quantidadelojapeças;
    }

    public Integer getQuantidadelojapeças(){
        return quantidadelojapeças;
    }

    public void setFotolojapeças1(String fotolojapeças1){
        this.fotolojapeças1 = fotolojapeças1;
    }

    public String getFotolojapeças1(){
        return fotolojapeças1;
    }

    public void setFotolojapeças2(String fotolojapeças2){
        this.fotolojapeças2 = fotolojapeças2;
    }

    public String getFotolojapeças2(){
        return fotolojapeças2;
    }

    public void setPossuiretifica(String possuiretifica){
        this.possuiretifica = possuiretifica;
    }

    public String getPossuiretifica(){
        return possuiretifica;
    }

    public void setQuantidaderetifica(Integer quantidaderetifica){
        this.quantidaderetifica = quantidaderetifica;
    }

    public Integer getQuantidaderetifica(){
        return quantidaderetifica;
    }

    public void setFotoretifica1(String fotoretifica1){
        this.fotoretifica1 = fotoretifica1;
    }

    public String getFotoretifica1(){
        return fotoretifica1;
    }

    public void setFotoretifica2(String fotoretifica2){
        this.fotoretifica2 = fotoretifica2;
    }

    public String getFotoretifica2(){
        return fotoretifica2;
    }

    public void setPossuioficina(String possuioficina){
        this.possuioficina = possuioficina;
    }

    public String getPossuioficina(){
        return possuioficina;
    }

    public void setQuantidadeoficina(Integer quantidadeoficina){
        this.quantidadeoficina = quantidadeoficina;
    }

    public Integer getQuantidadeoficina(){
        return quantidadeoficina;
    }

    public void setFotooficina1(String fotooficina1){
        this.fotooficina1 = fotooficina1;
    }

    public String getFotooficina1(){
        return fotooficina1;
    }

    public void setFotooficina2(String fotooficina2){
        this.fotooficina2 = fotooficina2;
    }

    public String getFotooficina2(){
        return fotooficina2;
    }

    public void setPossuiestaleiro(String possuiestaleiro){
        this.possuiestaleiro = possuiestaleiro;
    }

    public String getPossuiestaleiro(){
        return possuiestaleiro;
    }

    public void setQuantidadeestaleiro(Integer quantidadeestaleiro){
        this.quantidadeestaleiro = quantidadeestaleiro;
    }

    public Integer getQuantidadeestaleiro(){
        return quantidadeestaleiro;
    }

    public void setFotoestaleiro1(String fotoestaleiro1){
        this.fotoestaleiro1 = fotoestaleiro1;
    }

    public String getFotoestaleiro1(){
        return fotoestaleiro1;
    }

    public void setFotoestaleiro2(String fotoestaleiro2){
        this.fotoestaleiro2 = fotoestaleiro2;
    }

    public String getFotoestaleiro2(){
        return fotoestaleiro2;
    }

    public void setPossuioficinaeletronicos(String possuioficinaeletronicos){
        this.possuioficinaeletronicos = possuioficinaeletronicos;
    }

    public String getPossuioficinaeletronicos(){
        return possuioficinaeletronicos;
    }

    public void setQuantidadeoficinaeletronicos(Integer quantidadeoficinaeletronicos){
        this.quantidadeoficinaeletronicos = quantidadeoficinaeletronicos;
    }

    public Integer getQuantidadeoficinaeletronicos(){
        return quantidadeoficinaeletronicos;
    }

    public void setFotooficinaeletronicos1(String fotooficinaeletronicos1){
        this.fotooficinaeletronicos1 = fotooficinaeletronicos1;
    }

    public String getFotooficinaeletronicos1(){
        return fotooficinaeletronicos1;
    }

    public void setFotooficinaeletronicos2(String fotooficinaeletronicos2){
        this.fotooficinaeletronicos2 = fotooficinaeletronicos2;
    }

    public String getFotooficinaeletronicos2(){
        return fotooficinaeletronicos2;
    }

    public void setPossuilojaferramentas(String possuilojaferramentas){
        this.possuilojaferramentas = possuilojaferramentas;
    }

    public String getPossuilojaferramentas(){
        return possuilojaferramentas;
    }

    public void setQuantidadelojaferramentas(Integer quantidadelojaferramentas){
        this.quantidadelojaferramentas = quantidadelojaferramentas;
    }

    public Integer getQuantidadelojaferramentas(){
        return quantidadelojaferramentas;
    }

    public void setValoraluminio(String valoraluminio){
        this.valoraluminio = valoraluminio;
    }

    public String getValoraluminio(){
        return valoraluminio;
    }

    public void setUnidadealuminio(String unidadealuminio){
        this.unidadealuminio = unidadealuminio;
    }

    public String getUnidadealuminio(){
        return unidadealuminio;
    }

    public void setValoreletrodo(String valoreletrodo){
        this.valoreletrodo = valoreletrodo;
    }

    public String getValoreletrodo(){
        return valoreletrodo;
    }

    public void setFotolojaferramentas1(String fotolojaferramentas1){
        this.fotolojaferramentas1 = fotolojaferramentas1;
    }

    public String getFotolojaferramentas1(){
        return fotolojaferramentas1;
    }

    public void setFotolojaferramentas2(String fotolojaferramentas2){
        this.fotolojaferramentas2 = fotolojaferramentas2;
    }

    public String getFotolojaferramentas2(){
        return fotolojaferramentas2;
    }

    public void setPossuiassociacao(String possuiassociacao){
        this.possuiassociacao = possuiassociacao;
    }

    public String getPossuiassociacao(){
        return possuiassociacao;
    }

    public void setQuantidadeassociacao(Integer quantidadeassociacao){
        this.quantidadeassociacao = quantidadeassociacao;
    }

    public Integer getQuantidadeassociacao(){
        return quantidadeassociacao;
    }

    public void setFotoassociacao1(String fotoassociacao1){
        this.fotoassociacao1 = fotoassociacao1;
    }

    public String getFotoassociacao1(){
        return fotoassociacao1;
    }

    public void setFotoassociacao2(String fotoassociacao2){
        this.fotoassociacao2 = fotoassociacao2;
    }

    public String getFotoassociacao2(){
        return fotoassociacao2;
    }

    public void setPossuivhf(String possuivhf){
        this.possuivhf = possuivhf;
    }

    public String getPossuivhf(){
        return possuivhf;
    }

    public void setQuantidadevhf(Integer quantidadevhf){
        this.quantidadevhf = quantidadevhf;
    }

    public Integer getQuantidadevhf(){
        return quantidadevhf;
    }

    public void setFotovhf1(String fotovhf1){
        this.fotovhf1 = fotovhf1;
    }

    public String getFotovhf1(){
        return fotovhf1;
    }

    public void setFotovhf2(String fotovhf2){
        this.fotovhf2 = fotovhf2;
    }

    public String getFotovhf2(){
        return fotovhf2;
    }

    public void setPossuilanhouse(String possuilanhouse){
        this.possuilanhouse = possuilanhouse;
    }

    public String getPossuilanhouse(){
        return possuilanhouse;
    }

    public void setQuantidadelanhouse(Integer quantidadelanhouse){
        this.quantidadelanhouse = quantidadelanhouse;
    }

    public Integer getQuantidadelanhouse(){
        return quantidadelanhouse;
    }

    public void setFotolanhouse1(String fotolanhouse1){
        this.fotolanhouse1 = fotolanhouse1;
    }

    public String getFotolanhouse1(){
        return fotolanhouse1;
    }

    public void setFotolanhouse2(String fotolanhouse2){
        this.fotolanhouse2 = fotolanhouse2;
    }

    public String getFotolanhouse2(){
        return fotolanhouse2;
    }


}
