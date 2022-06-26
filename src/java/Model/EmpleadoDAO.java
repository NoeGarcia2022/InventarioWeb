
package Model;

import config.Conexion;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

public class EmpleadoDAO {
    Conexion cn=new Conexion();
    Connection con;
    PreparedStatement ps;
    ResultSet rs;
    
    public Empleado validar(String user, String dui){
        Empleado em=new Empleado();
        String sql="select * from empleado where User=? and dui=?";
        try{
            con=cn.Conexion();
            ps=con.prepareStatement(sql);
            ps.setString(1, user);
            ps.setString(2, dui);
            rs=ps.executeQuery();
            while (rs.next()){
                em.setId(rs.getInt("IdEmpleado"));
                em.setUser(rs.getString("User"));
                em.setDui(rs.getString("dui"));
                em.setNom(rs.getString("Nombres"));
            }
        }catch(Exception e){
        
        }
        return em;
    }
}
