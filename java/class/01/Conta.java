public class Conta{
    private static int numero = 0;
    private double saldo;

    public Conta(){
        this.numero = Conta.defCod();
        this.saldo = saldo;
    }

    private static int defCod(){
        numero += 1;
        return numero;
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