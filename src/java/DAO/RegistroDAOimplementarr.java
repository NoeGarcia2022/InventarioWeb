
package DAO;

import Factory.ConexionBD;
import Factory.FactoryConexionDB;
import Model.Empleado;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;
import javax.servlet.RequestDispatcher;


public class RegistroDAOimplementarr implements RegistroDAO {
    
    ConexionBD conn;
    public RegistroDAOimplementarr() {
        
    }

    @Override
    public List<Empleado> Listar() {
this.conn = FactoryConexionDB.open(FactoryConexionDB.MySQL);
        StringBuilder miSQL = new StringBuilder();
        miSQL.append("select * from empleado;");
        List<Empleado> lista = new ArrayList<Empleado>();
        try{
            ResultSet resultadoSQL = this.conn.consultaSQL(miSQL.toString());
            while(resultadoSQL.next()){
                Empleado empleado = new Empleado();
                empleado.setId(resultadoSQL.getInt("IdEmpleado"));
                empleado.setNom(resultadoSQL.getString("Nombres"));
                empleado.setApell(resultadoSQL.getString("Apellidos"));
                empleado.setDui(resultadoSQL.getString("dui"));
                empleado.setTel(resultadoSQL.getString("Telefono"));
                empleado.setTipo(resultadoSQL.getInt("Tipo"));
                empleado.setEstado(resultadoSQL.getInt("Estado"));
                empleado.setEmail(resultadoSQL.getString("Email"));
                empleado.setUser(resultadoSQL.getString("User"));
                empleado.setClave(resultadoSQL.getString("Contraseña"));
                lista.add(empleado);
            }
        }catch(Exception ex){
            ex.printStackTrace();
        }finally{
            this.conn.cerrarConexion();
        }
        
        return lista;
    }

    @Override
    public List<Empleado> Listar2() {
                 throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
        }

    @Override
    public Empleado editarEmp(int id_emp_edit) {
this.conn = FactoryConexionDB.open(FactoryConexionDB.MySQL);
        Empleado empleado = new Empleado();
        StringBuilder miSQL = new StringBuilder();
        miSQL.append("select * from empleado where IdEmpleado = ").append(id_emp_edit);
        try{
            ResultSet resultadoSQL = this.conn.consultaSQL(miSQL.toString());
            while(resultadoSQL.next()){
                empleado.setId(resultadoSQL.getInt("IdEmpleado"));
                empleado.setNom(resultadoSQL.getString("Nombres"));
                empleado.setApell(resultadoSQL.getString("Apellidos"));
                empleado.setDui(resultadoSQL.getString("dui"));
                empleado.setTel(resultadoSQL.getString("Telefono"));
                empleado.setTipo(resultadoSQL.getInt("Tipo"));
                empleado.setEstado(resultadoSQL.getInt("Estado"));
                empleado.setEmail(resultadoSQL.getString("Email"));
                empleado.setUser(resultadoSQL.getString("User"));
                empleado.setClave(resultadoSQL.getString("Contraseña"));
            }
            
        }catch(Exception e){
            
        }finally{
            this.conn.cerrarConexion();
        }
        
        return empleado;
    }    

    @Override
    public boolean guardarEmp(Empleado empleado) {
this.conn = FactoryConexionDB.open(FactoryConexionDB.MySQL);
        boolean guarda = false;
        
        try{
            if(empleado.getId()== 0){
                System.out.println("Guardar");
                StringBuilder miSQL = new StringBuilder();
                miSQL.append("INSERT INTO empleado(dui, Nombres, Apellidos, Email,  Telefono, User, Clave, Tipo, Estado) values('");
                miSQL.append(empleado.getDui()+ "', '").append(empleado.getNom()+ "', '").append(empleado.getApell()+ "', '").append(empleado.getEmail()+ "', '")
                .append(empleado.getTel()+ "', '").append(empleado.getUser()+ "', '").append(empleado.getClave()+ "', '").append(empleado.getTipo()+ "', '").append(empleado.getEstado());
                miSQL.append("');");
                this.conn.ejecutarSQL(miSQL.toString());
                
            }else if(empleado.getId()> 0){
                
                //System.out.println("Update");
                StringBuilder miSQL = new StringBuilder();
                miSQL.append("UPDATE ampleado SET IdEmpleado = ").append(empleado.getId());
                miSQL.append(", Nombres = '").append(empleado.getNom());
                miSQL.append("', Apellidos = ").append(empleado.getApell());
                miSQL.append("', Tipo = ").append(empleado.getTipo());
                miSQL.append("', Estado = ").append(empleado.getEstado());
                miSQL.append("', dui = ").append(empleado.getDui());
                miSQL.append("', Telefono = ").append(empleado.getTel());
                miSQL.append("', Email = ").append(empleado.getEmail());
                miSQL.append("', User = ").append(empleado.getUser());
                miSQL.append("', Contraseña = ").append(empleado.getClave());
                miSQL.append(" WHERE IdEmpleado = ").append(empleado.getId()).append(";");
                this.conn.ejecutarSQL(miSQL.toString());
            }
           guarda = true;
        }catch(Exception e){
            
        }finally{
            this.conn.cerrarConexion();
        }
        
        return guarda;    
    }

    @Override
    public boolean borrarEmp(int id_emp_borrar) {
this.conn = FactoryConexionDB.open(FactoryConexionDB.MySQL);
        boolean borra = false;
        try{
            StringBuilder miSQL = new StringBuilder();
            miSQL.append("Delete from empleado where IdEmpleado = ").append(id_emp_borrar);
            this.conn.ejecutarSQL(miSQL.toString());
            borra = true;
        }catch(Exception e){
            
        }finally{
            this.conn.cerrarConexion();
        }
        
        return borra;    }
}
