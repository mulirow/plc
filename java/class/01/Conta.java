public class Conta{
    private String numero;
    private double saldo;

    public Conta(String numeroInicial,
                 double saldoInicial){
        numero = numeroInicial;
        saldo = saldoInicial;
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

    public String getNumero(){
        return numero;
    }
}