public class Conta extends ContaAbstrata{
    public Conta(){
        super();
    }

    public void debitar(double val){
        this.setSaldo(this.getSaldo() - val);
    }
}