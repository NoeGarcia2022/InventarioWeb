/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Test;


import DAO.RegistroDAO;
import DAO.RegistroDAOimplementarr;
import Model.Categoria;
import Model.Empleado;

/**
 *
 * @author ITCA
 */
public class prueba1 {
    public static void main(String[] args) {
        prueba1 pru1 = new prueba1();
        pru1.guardarCatgoria();
    }
    
    
     public void guardarCatgoria(){
        RegistroDAO categoria = new RegistroDAOimplementarr();
        Empleado guardar_cat = new Empleado();
        guardar_cat.setDui("0000000000");
        guardar_cat.setNom("noe");
        guardar_cat.setApell("garcia");
        guardar_cat.setEmail("ejemple@");
        guardar_cat.setTel("01234568");
        guardar_cat.setUser("garcia01");
        guardar_cat.setClave("123456");
        guardar_cat.setTipo(1);
        guardar_cat.setEstado(1);
        
        
        //Lo nuevo es seteo del id
         System.out.println(categoria.guardarEmp(guardar_cat));        
    }
}
