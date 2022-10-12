public class Poupanca extends Conta {
    public Poupanca(){
        super();
    }

    public void renderJuros(double taxa) {
        double juros = this.getSaldo() * taxa;
        this.creditar(juros);
    }
}
