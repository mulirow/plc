public class Programa {
    public static void main(String[] args){
        Poupanca p = new Poupanca();
        Poupanca p2 = new Poupanca();
        p.creditar(10.0);
        p.renderJuros(0.15);
        p.debitar(5.0);
        System.out.print("Poupanca "+p.getNumero());
        System.out.print(" saldo "+p.getSaldo() + "\n");
    }
}