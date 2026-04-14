package model;

import java.sql.Timestamp;

public class Credencial {
    
    private int idCredencial;
    private String login;
    private String senha;
    private Timestamp ultimoLogin;
    
    public int getIdCredencial() {
        return idCredencial;
    }
    public void setIdCredencial(int idCredencial) {
        this.idCredencial = idCredencial;
    }
    public String getLogin() {
        return login;
    }
    public void setLogin(String login) {
        this.login = login;
    }
    public String getSenha() {
        return senha;
    }
    public void setSenha(String senha) {
        this.senha = senha;
    }
    public Timestamp getUltimoLogin() {
        return ultimoLogin;
    }
    public void setUltimoLogin(Timestamp ultimoLogin) {
        this.ultimoLogin = ultimoLogin;
    }
    public Credencial(int idCredencial, String login, String senha, Timestamp ultimoLogin) {
        this.idCredencial = idCredencial;
        this.login = login;
        this.senha = senha;
        this.ultimoLogin = ultimoLogin;
    }


}
