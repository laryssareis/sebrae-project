package model;

import java.sql.Timestamp;


public class CadastroConteudo {
    private int idCadastro;
    private String nomeConteudo;
    private String descricao;
    private Timestamp ultimaAtualizacao;
    
    public int getIdCadastro() {
        return idCadastro;
    }
    public void setIdCadastro(int idCadastro) {
        this.idCadastro = idCadastro;
    }
    public String getNomeConteudo() {
        return nomeConteudo;
    }
    public void setNomeConteudo(String nomeConteudo) {
        this.nomeConteudo = nomeConteudo;
    }
    public String getDescricao() {
        return descricao;
    }
    public void setDescricao(String descricao) {
        this.descricao = descricao;
    }
    public Timestamp getUltimaAtualizacao() {
        return ultimaAtualizacao;
    }
    public void setUltimaAtualizacao(Timestamp ultimaAtualizacao) {
        this.ultimaAtualizacao = ultimaAtualizacao;
    }

    public CadastroConteudo(int idCadastro, String nomeConteudo, String descricao, Timestamp ultimaAtualizacao) {
        this.idCadastro = idCadastro;
        this.nomeConteudo = nomeConteudo;
        this.descricao = descricao;
        this.ultimaAtualizacao = ultimaAtualizacao;
    }
    
}
