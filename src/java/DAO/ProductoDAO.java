
package DAO;

import Model.Producto;
import java.util.List;

public interface ProductoDAO {
    //public int dato1 = 10;
    
    public List<Producto> ListarP();
    public List<Producto> ListarP2();
    public Producto editarPro(int id_pro_edit);
    public boolean guardarPro(Producto producto);
    public boolean borrarPro(int id_pro_borrar);
    
    //public boolean metodo1();
    
}
