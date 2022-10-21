public class Banco {
    private Conta[] arr;
    private int index;
    private double taxaJuros;

    public Banco() {
        this.arr = new Conta[10];
        this.index = 0;
        this.taxaJuros = 0.01;
    }

    public void cadastrar(Conta c) {
        arr[index] = c;
        index++;
    }

    public Conta procurarConta(int num) {
        for (int i = 0; i < index; i++) {
            if(arr[i].getNumero() == num){
                return arr[i];
            }
        }
        throw new RuntimeException("Account not found.");
    }

    public void creditar(int num, double val) {
        Conta acc = this.procurarConta(num);
        acc.creditar(val);
    }

    public void debitar(int num, double val) {
        Conta acc = this.procurarConta(num);
        acc.creditar(val);
    }

    public double getSaldo(int num){
        Conta acc = this.procurarConta(num);
        return acc.getSaldo();
    }

    public void renderJuros(int num){
        Conta acc = this.procurarConta(num);
        if (acc instanceof Poupanca){
            ((Poupanca) acc).renderJuros(taxaJuros);
        }
        else
            throw new RuntimeException("Not a savings account.");
    }

    public void renderBonus(int num){
        Conta acc = this.procurarConta(num);
        if (acc instanceof ContaEspecial){
            ((ContaEspecial) acc).renderBonus();
        }
        else
            throw new RuntimeException("Not a special account.");
    }

    public void transferir(int contaDeb, int contaCred, double val){
        Conta accDeb = this.procurarConta(contaDeb);
        Conta accCred = this.procurarConta(contaCred);
        accDeb.debitar(val);
        accCred.creditar(val);
    }
}
