public class ContaImposto extends Conta {
    private static final double CPMF = 0.001;

    public ContaImposto(){
        super();
    }

    public void debitar(double valor) {
        double imposto = valor * CPMF;
        super.setSaldo(getSaldo() - valor - imposto);
    }

}