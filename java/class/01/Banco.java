public class Banco {
    private Conta[] arr;
    private int index;

    public Banco() {
        this.arr = new Conta[10];
        this.index = 0;
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
    }

    public double getSaldo(int num){
        for (int i = 0; i < arr.length; i++) {
            if (int num == arr[i].getNumero()) {
                return arr[i].getSaldo();
            }
        }
    }
}
