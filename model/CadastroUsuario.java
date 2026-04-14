package model;

import java.sql.Timestamp;
import java.time.LocalDate;

public class CadastroUsuario {
    private int idUsuario;
    private String nome;
    private String sobrenome;
    private LocalDate dataNasc;
    private String email;
    private Timestamp dataCadastro;
    
    public int getIdUsuario() {
        return idUsuario;
    }
    public void setIdUsuario(int idUsuario) {
        this.idUsuario = idUsuario;
    }
    public String getNome() {
        return nome;
    }
    public void setNome(String nome) {
        this.nome = nome;
    }
    public String getSobrenome() {
        return sobrenome;
    }
    public void setSobrenome(String sobrenome) {
        this.sobrenome = sobrenome;
    }
    public LocalDate getDataNasc() {
        return dataNasc;
    }
    public void setDataNasc(LocalDate dataNasc) {
        this.dataNasc = dataNasc;
    }
    public String getEmail() {
        return email;
    }
    public void setEmail(String email) {
        this.email = email;
    }
    public Timestamp getDataCadastro() {
        return dataCadastro;
    }
    public void setDataCadastro(Timestamp dataCadastro) {
        this.dataCadastro = dataCadastro;
    }
    public CadastroUsuario(int idUsuario, String nome, String sobrenome, LocalDate dataNasc, String email,
            Timestamp dataCadastro) {
        this.idUsuario = idUsuario;
        this.nome = nome;
        this.sobrenome = sobrenome;
        this.dataNasc = dataNasc;
        this.email = email;
        this.dataCadastro = dataCadastro;
    }
}
