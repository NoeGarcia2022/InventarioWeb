
package config;

import java.sql.Connection;
import java.sql.DriverManager;

public class Conexion {
    Connection con;
    String url="jdbc:mysql://localhost:3306/bd_inventario";
    String user="root";
    String pass="";
    String driver;
    public Connection Conexion(){
        try{
            Class.forName("com.mysql.jdbc.Driver");
            con=DriverManager.getConnection(url,user,pass);
        }catch (Exception e){
        
        }
        return con;
    }
    
    public String getUrl() {
        return url;
    }

    public void setUrl(String url) {
        this.url = url;
    }

    public String getUser() {
        return user;
    }

    public void setUser(String user) {
        this.user = user;
    }

    public String getPass() {
        return pass;
    }

    public void setPass(String pass) {
        this.pass = pass;
    }
     public String getDriver() {
        return driver;
    }

    public void setDriver(String driver) {
        this.driver = driver;
    }
    
    
    
    
    
    
}
