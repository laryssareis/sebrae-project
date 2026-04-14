package model;

public class Filme {
    private int idFilme;
    private String titulo;
    private String descricao;
    
    public int getIdFilme() {
        return idFilme;
    }
    public void setIdFilme(int idFilme) {
        this.idFilme = idFilme;
    }
    public String getTitulo() {
        return titulo;
    }
    public void setTitulo(String titulo) {
        this.titulo = titulo;
    }
    public String getDescricao() {
        return descricao;
    }
    public void setDescricao(String descricao) {
        this.descricao = descricao;
    }
    public Filme(int idFilme, String titulo, String descricao) {
        this.idFilme = idFilme;
        this.titulo = titulo;
        this.descricao = descricao;
    }
}
