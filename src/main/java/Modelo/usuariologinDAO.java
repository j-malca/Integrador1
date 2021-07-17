/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Modelo;

import config.Conexion;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

/**
 *
 * @author Jonnathan
 */
public class usuariologinDAO {
    Conexion cn=new Conexion();
    Connection con;
    PreparedStatement ps;
    ResultSet rs;
    
    public usuarioslogin validar (String user, String Pass){
    usuarioslogin us=new usuarioslogin();
    String sql="Select * from login where user=? and pass=?";
    
    try {
    
    con=cn.Conexion();
    ps=con.prepareStatement(sql);
    ps.setString(1,user);
    ps.setString(2,Pass);
    rs=ps.executeQuery();
    while (rs.next()){
     us.setUser(rs.getString("user"));
     us.setPasswor(rs.getString("Passwor"));
    }
    
    } catch(Exception e) {
        
    }
    return us;
    
    }
}
