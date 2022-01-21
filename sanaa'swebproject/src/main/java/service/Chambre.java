package service;



public class Chambre {

    private int id;
    private int num;
    private String type;
    private int prix;
    


    public Chambre(int i, int n, int p ,String t) {
        this.id = i;
        this.num = n;
        this.type = t;
        this.prix = p;
        
    }
    
    public Chambre( int n, int p ,String t) {
        
        this.num = n;
        this.type = t;
        this.prix = p;
        
        
    }
    

    public int getId() {
        return id;
    }


    public int getNum() {
        return num;
    }

    public void setNum(int num) {
        this.num = num;
    }

    public String getType() {
        return type;
    }

    public void setType(String type) {
        this.type = type;
    }

    public int getPrix() {
        return prix;
    }

    public void setPrix(int prix) {
        this.prix = prix;
    }
   
    
   
    @Override
    public String toString() {
        return num +" " + type;
    }

    

}
