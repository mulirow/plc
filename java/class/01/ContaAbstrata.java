public abstract class ContaAbstrata {
    private int numero;
    private double saldo;
    private static int prox = -1;

    public ContaAbstrata() {
        this.numero = ContaAbstrata.defCod();
        this.saldo = 0.0;
    }

    private static int defCod(){
        prox += 1;
        return prox;
    }

    public void creditar(double val) {
        this.saldo += val;
    }

    public double getSaldo() {
        return this.saldo;
    }

    public int getNumero(){
        return this.numero;
    }

    protected void setSaldo(double saldo){
        this.saldo = saldo;
    }

    public abstract void debitar(double valor);
}
