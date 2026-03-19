/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package com.mycompany.formularios.config;

import java.sql.*;
/**
 *
 * @author Creyese23
 */
public class conexion {
    public static final String username = "root";
    public static final String password = "";
    public static final String DB = "registrousuarios";
    public static final String URL = "jdbc:mysql://localhost:3306/"+DB;
    
    public static Connection getConnection(){
        Connection conn = null;
        
        try{
            Class.forName("com.mysql.cj.jdbc.Driver");
            conn = DriverManager.getConnection(URL, username, password);
            System.out.println("Conexion establecida satisfactoriamente");
        }catch(Exception ex){
            ex.printStackTrace();
        }
        
        return conn;
        
    }
    
}
