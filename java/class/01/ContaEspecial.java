public class ContaEspecial extends Conta {
    private double bonus;
    private double taxa;

    public ContaEspecial(){
        super();
        this.bonus = 0.0;
        this.taxa = 0.01;
    }

    public void renderBonus(){
        super.creditar(this.bonus);
        this.bonus = 0;
    }

    public double getBonus(){
        return this.bonus;
    }

    public void creditar(double valor){
        super.creditar(valor);
        this.bonus += valor * this.taxa;
    }
}
