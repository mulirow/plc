import java.util.Scanner;

public class Pessoa {
    private String nome;

    public Pessoa(String nome){
        this.nome = nome;
    }

    public String getNome(){
        return this.nome;
    }

    public void setNome(String nome){
        this.nome = nome;
    }

    public static void main(String[] args){
        try (Scanner in = new Scanner(System.in)) {
            System.out.println("Digite o nome completo: ");
            Pessoa p = new Pessoa(in.nextLine());

            String nomes[] = p.getNome().split(" ");

            System.out.println("Primeiro nome: " + nomes[0]);
            System.out.println("Segundo nome: " + nomes[nomes.length - 1]);
        }
    }
}
