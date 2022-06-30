
package DAO;

import Model.Empleado;
import java.util.List;

public interface RegistroDAO {
    
    public List<Empleado> Listar();
    public List<Empleado> Listar2();
    public Empleado editarEmp(int id_emp_edit);
    public boolean guardarEmp(Empleado empleado);
    public boolean borrarEmp(int id_emp_borrar);
    
}
