public class Produto{
    private static int cod = 0;
    private String desc;
    private double value;
    private int stock;

    public Produto(String desc, double value, int stock){
        cod = Produto.getCod();
        this.desc = desc;
        this.value = value;
        this.stock = stock;
    }

    public Produto(String desc, double value){
        cod = Produto.getCod();
        this.desc = desc;
        this.value = value;
        this.stock = 0;
    }

    private static int getCod(){
        cod += 1;
        return cod;
    }

    public void setDesc(String description){
        desc = description;
    }

    public void setValue(double val){
        value = val;
    }

    public void setStock(int stck){
        stock = stck;
    }

    public String getDesc(){
        return desc;
    }

    public double getValue(){
        return value;
    }

    public int getStock(){
        return stock;
    }
}