package service;


public class User {

    private int id;
    private String nom;
   
    private String email;
    private String password;
    private String etat;
   
    public User(int i, String n, String e, String pa, String et) {
        this.id = i;
        this.nom = n;
       
        this.email = e;
        this.password = pa;
        this.etat = et;
       
    }
    
    public User(String n, String e, String pa, String et) {
        this.nom = n;
      
        this.email = e;
        this.password = pa;
        this.etat = et;
       
    }
    

    public int getId() {
        return id;
    }


    public String getNom() {
        return nom;
    }

    public void setNom(String nom) {
        this.nom = nom;
    }

   

   

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }
    
    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password;
    }
    
    public String getEtat() {
        return etat;
    }

    public void setEtat(String etat) {
        this.etat = etat;
    }
  

    @Override
    public String toString() {
        return   nom;
    }

    

}
