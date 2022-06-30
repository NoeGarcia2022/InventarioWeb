
package Model;

public class Empleado {
    int id;
    String dui;
    String nom;
    String apell;
    String email;
    String tel;
    int estado;
    String user;
    String clave;
    int tipo;

    public Empleado() {
    }

    public Empleado(int id, String dui, String nom, String apell, String email, String tel, int estado, String user, String clave, int tipo) {
        this.id = id;
        this.dui = dui;
        this.nom = nom;
        this.apell = apell;
        this.email = email;
        this.tel = tel;
        this.estado = estado;
        this.user = user;
        this.clave = clave;
        this.tipo = tipo;
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getDui() {
        return dui;
    }

    public void setDui(String dui) {
        this.dui = dui;
    }

    public String getNom() {
        return nom;
    }

    public void setNom(String nom) {
        this.nom = nom;
    }
    
    public String getApell() {
        return apell;
    }

    public void setApell(String apell) {
        this.apell = apell;
    }
    
    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public String getTel() {
        return tel;
    }

    public void setTel(String tel) {
        this.tel = tel;
    }

    public int getEstado() {
        return estado;
    }

    public void setEstado(int estado) {
        this.estado = estado;
    }

    public String getUser() {
        return user;
    }

    public void setUser(String user) {
        this.user = user;
    }
    
    public String getClave() {
        return clave;
    }

    public void setClave(String clave) {
        this.clave = clave;
    }
    
    public int getTipo() {
        return tipo;
    }

    public void setTipo(int tipo) {
        this.tipo = tipo;
    }
    
}
