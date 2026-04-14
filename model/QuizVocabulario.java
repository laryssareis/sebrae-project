package model;

public class QuizVocabulario {
    
    private int idQuiz;
    private String pergunta;
    private String opcao1;
    private String opcao2;
    private String opcao3;
    private String resposta;
    private String explicacao;
    
    public int getIdQuiz() {
        return idQuiz;
    }
    public void setIdQuiz(int idQuiz) {
        this.idQuiz = idQuiz;
    }
    public String getPergunta() {
        return pergunta;
    }
    public void setPergunta(String pergunta) {
        this.pergunta = pergunta;
    }
    public String getOpcao1() {
        return opcao1;
    }
    public void setOpcao1(String opcao1) {
        this.opcao1 = opcao1;
    }
    public String getOpcao2() {
        return opcao2;
    }
    public void setOpcao2(String opcao2) {
        this.opcao2 = opcao2;
    }
    public String getOpcao3() {
        return opcao3;
    }
    public void setOpcao3(String opcao3) {
        this.opcao3 = opcao3;
    }
    public String getResposta() {
        return resposta;
    }
    public void setResposta(String resposta) {
        this.resposta = resposta;
    }
    public String getExplicacao() {
        return explicacao;
    }
    public void setExplicacao(String explicacao) {
        this.explicacao = explicacao;
    }
    public QuizVocabulario(int idQuiz, String pergunta, String opcao1, String opcao2, String opcao3, String resposta,
            String explicacao) {
        this.idQuiz = idQuiz;
        this.pergunta = pergunta;
        this.opcao1 = opcao1;
        this.opcao2 = opcao2;
        this.opcao3 = opcao3;
        this.resposta = resposta;
        this.explicacao = explicacao;
    }
    
    

}
