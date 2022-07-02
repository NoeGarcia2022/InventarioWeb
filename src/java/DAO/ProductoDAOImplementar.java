package DAO;
import Model.Producto;
import Factory.ConexionBD;
import Factory.FactoryConexionDB;
import Model.Categoria;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;
import DAO.CategoriaDAO;
import DAO.CategoriaDAOImplementar;

public class ProductoDAOImplementar implements ProductoDAO{
    
    ConexionBD conn;
    public ProductoDAOImplementar() {
        //this.conn = FactoryConexionDB.open(FactoryConexionDB.MySQL);
    }
    Categoria cat = new Categoria();
    
    
    @Override
    public List<Producto> ListarP() {
        this.conn = FactoryConexionDB.open(FactoryConexionDB.MySQL);
        StringBuilder miSQL = new StringBuilder();
        //miSQL.append("select * from tb_producto;");
        miSQL.append("SELECT id_producto, nom_producto, stock, precio, unidad_de_medida, estado_producto, id_categoria, nom_categoria FROM tb_producto INNER JOIN tb_categoria USING(id_categoria) WHERE id_producto!=0 ORDER BY id_producto");
        List<Producto> listaP = new ArrayList<Producto>();
        try{
            ResultSet resultadoSQL = this.conn.consultaSQL(miSQL.toString());
            while(resultadoSQL.next()){
                Producto producto = new Producto();
                
               
                producto.setId_producto(resultadoSQL.getInt("id_producto"));
                producto.setNom_producto(resultadoSQL.getString("nom_producto"));
                producto.setStock(resultadoSQL.getFloat("stock"));
                producto.setPrecio(resultadoSQL.getFloat("precio"));
                producto.setUnidadMedida(resultadoSQL.getString("unidad_de_medida"));
                producto.setEstado(resultadoSQL.getInt("estado_producto"));
                producto.setCategoria_id(resultadoSQL.getInt("id_categoria"));
                producto.setCat(resultadoSQL.getString("nom_categoria"));

                //producto.setCategoria(cat);
                //categoria.setId_categoria(resultadoSQL.getInt("id_categoria"));
                
                listaP.add(producto);
            }
        }catch(Exception ex){
            ex.printStackTrace();
        }finally{
            this.conn.cerrarConexion();
        }
        
        return listaP;
    }

    @Override
    public List<Producto> ListarP2() {
        return null;
    }
    

    @Override
    public Producto editarPro(int id_pro_edit) {
         this.conn = FactoryConexionDB.open(FactoryConexionDB.MySQL);
        Producto producto = new Producto();
        StringBuilder miSQL = new StringBuilder();
        miSQL.append("select * from tb_producto where id_producto = '"+id_pro_edit+"';");
        try{
            ResultSet resultadoSQL = this.conn.consultaSQL(miSQL.toString());
            while(resultadoSQL.next()){
                //categoria.setId_categoria(resultadoSQL.getInt("id_categoria"));
                producto.setId_producto(resultadoSQL.getInt("id_producto"));
                producto.setNom_producto(resultadoSQL.getString("nom_producto"));
                producto.setStock(resultadoSQL.getFloat("stock"));
                producto.setPrecio(resultadoSQL.getFloat("precio"));
                producto.setUnidadMedida(resultadoSQL.getString("unidad_de_medida"));
                producto.setEstado(resultadoSQL.getInt("estado_producto"));
                producto.setCategoria_id(resultadoSQL.getInt("id_categoria "));
            }
            
        }catch(Exception e){
            
        }finally{
            this.conn.cerrarConexion();
        }
        
        return producto;
    }

    @Override
    public boolean guardarPro(Producto producto) {
        this.conn = FactoryConexionDB.open(FactoryConexionDB.MySQL);
        boolean guarda = false;
        
        try{
            if(producto.getId_producto()== 0){
                System.out.println("Guardar");
                StringBuilder miSQL = new StringBuilder();
                miSQL.append("INSERT INTO tb_producto (nom_producto, stock, precio, unidad_de_medida, estado_producto, id_categoria) values('"+producto.getNom_producto()+ "', '"+producto.getStock()+ "', '"+producto.getPrecio()+ "', '"+producto.getUnidadMedida()+"', '"+producto.getEstado()+ "', '"+producto.getCategoria_id()+"')");
                this.conn.ejecutarSQL(miSQL.toString());
            }else if(producto.getId_producto()> 0){
                
                //System.out.println("Update");
                StringBuilder miSQL = new StringBuilder();
                miSQL.append("UPDATE tb_producto SET id_producto='"+producto.getId_producto()+"',nom_producto='"+producto.getNom_producto()+"',stock='"+producto.getStock()+"',precio='"+producto.getPrecio()+"',unidad_de_medida='"+producto.getUnidadMedida()+"',estado_producto='"+producto.getEstado()+"',id_categoria='"+producto.getCategoria_id()+"' WHERE id_producto="+producto.getId_producto());
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
    public boolean borrarPro(int id_pro_borrar) {
        this.conn = FactoryConexionDB.open(FactoryConexionDB.MySQL);
        boolean borra = false;
        try{
            StringBuilder miSQL = new StringBuilder();
            miSQL.append("Delete from tb_producto where id_producto = ").append(id_pro_borrar);
            this.conn.ejecutarSQL(miSQL.toString());
            borra = true;
        }catch(Exception e){
            
        }finally{
            this.conn.cerrarConexion();
        }
        
        return borra;
    }
    
}
