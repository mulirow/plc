public class Programa {
    public static void main(String[] args){
        Conta c = new Conta("123-X", 8.0);
        c.creditar(10.0);
        c.debitar(5.0);
        System.out.print("Conta "+c.getNumero());
        System.out.print(" saldo "+c.getSaldo());
    }
}