package model;

public class Serie {
    private int idSeries;
    private String titulo;
    private String descricao;
    
    public int getIdSeries() {
        return idSeries;
    }
    public void setIdSeries(int idSeries) {
        this.idSeries = idSeries;
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
    public Serie(int idSeries, String titulo, String descricao) {
        this.idSeries = idSeries;
        this.titulo = titulo;
        this.descricao = descricao;
    }  
}
