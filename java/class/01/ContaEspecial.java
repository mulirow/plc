public class ContaEspecial extends Conta {
    private double bonus;
    private static final double taxa = 0.01;

    public ContaEspecial(){
        super();
        this.bonus = 0.0;
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
        this.bonus += valor * taxa;
    }
}
