/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Modelo;

/**
 *
 * @author Jonnathan
 */
public class usuarioslogin {
    int id;
    String user;
    String passwor;

    public usuarioslogin() {
    }

    public usuarioslogin(int id, String user, String passwor) {
        this.id = id;
        this.user = user;
        this.passwor = passwor;
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getUser() {
        return user;
    }

    public void setUser(String user) {
        this.user = user;
    }

    public String getPasswor() {
        return passwor;
    }

    public void setPasswor(String passwor) {
        this.passwor = passwor;
    }
    
    
   
}
