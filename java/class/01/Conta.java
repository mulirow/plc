public class Conta extends ContaAbstrata{
    private int numero;
    private double saldo;

    public Conta(){
        super();
    }

    public void debitar(double val){
        this.setSaldo(this.getSaldo() - val);
    }
}