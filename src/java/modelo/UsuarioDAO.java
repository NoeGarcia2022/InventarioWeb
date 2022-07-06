
package modelo;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

public class UsuarioDAO implements Validar {
    
    Connection con;
    Conexion cn = new Conexion();
    PreparedStatement ps;
    ResultSet rs;

    @Override
    public int Validar(Usuario usu) {
        int r=0;
        String sql="Select * from empleado where User=? and Clave=?";
        try{
            con=cn.getConnection();
            ps=con.prepareStatement(sql);
            ps.setString(1, usu.getUsuario());
            ps.setString(2, usu.getClave());
            rs=ps.executeQuery();
            while(rs.next()){
                r=r+1;
                usu.setUsuario(rs.getString("User"));
                usu.setClave(rs.getString("Clave"));
            }
            if(r==1){
                return 1;
            }else{
                return 0;
            }
        }catch(Exception e){
            return 0;
        }
    } 
}
