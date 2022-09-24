public class Aluno {
    private String nome;
    private String cpf;
    private int idade;
    private Curso curso;
    private int matricula;
    static int proximo = 0;

    public Aluno(String nome, String cpf, int idade, Curso curso){
        this.nome = nome;
        this.cpf = cpf;
        this.idade = idade;
        this.curso = curso;
        this.matricula = getProximo();
    }

    private static int getProximo(){
        proximo = proximo + 1;
        return proximo;
    }

    public int getMatricula(){
        return this.matricula;
    }

    public String getNome(){
        return this.nome;
    }

    public Curso getCurso(){
        return this.curso;
    }

    public String getCpf(){
        return this.cpf;
    }

    public int getIdade(){
        return this.idade;
    }

    public void setNome(String nome){
        this.nome = nome;
    }

    public void setCurso(Curso curso) {
        this.curso = curso;
    }

    public void setCpf(String cpf) {
        this.cpf = cpf;
    }

    public void setIdade(int idade) {
        this.idade = idade;
    }

    public void printAluno () {
        System.out.println("Dados do aluno: " + this.getNome());
        System.out.println("Matricula: " + this.getMatricula());
        System.out.println("CPF: " + this.getCpf());
        System.out.println("Idade: " + this.getIdade());
        System.out.println("Curso: " + this.getCurso().getNome());
    }
}