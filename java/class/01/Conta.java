public class Conta{
    private int numero;
    private static int prox = -1;
    private double saldo;

    public Conta(){
        this.numero = Conta.defCod();
        this.saldo = 0;
    }

    private static int defCod(){
        prox += 1;
        return prox;
    }

    public void creditar(double valor){
        saldo += valor;
    }

    public void debitar(double valor){
        saldo -= valor;
    }

    public double getSaldo(){
        return saldo;
    }

    public int getNumero(){
        return numero;
    }
}