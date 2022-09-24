public class Produto{
    private String desc;
    private double value;
    private int stock;

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