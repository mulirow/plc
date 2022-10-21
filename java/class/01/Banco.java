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

    public void creditar(int num, double val) {
        for (int i = 0; i < arr.length; i++) {
            if (num == arr[i].getNumero()) {
                arr[i].creditar(val);
                return;
            }
        }
    }

    public void debitar(int num, double val) {
        for (int i = 0; i < arr.length; i++) {
            if (int num == arr[i].getNumero()) {
                arr[i].debitar(val);
                return;
            }
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
