/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package com.mycompany.formularios.Dao;

import com.mycompany.formularios.modelo.Usuarios;
import com.mycompany.formularios.config.conexion;
import java.sql.*; 
import java.util.ArrayList;
import java.util.List;

public class UsuariosDAO {
    private Connection con = null;
    private PreparedStatement ps = null;
    private ResultSet rs = null;
    
    public List<Usuarios> ListarTodos(){
        List<Usuarios> lista = new ArrayList<>();
        
        try {
            con = conexion.getConnection();
            String sql = "SELECT * FROM usuarios";
            ps = con.prepareStatement(sql);
            rs = ps.executeQuery();
            
            while (rs.next()) {                
                Usuarios obj = new Usuarios();
                obj.setId(rs.getInt("id"));
                obj.setTipo_documento(rs.getString("tipo_documento"));
                obj.setDocumento(rs.getString("documento"));
                obj.setNombres(rs.getString("nombres"));
                obj.setApellidos(rs.getString("apellidos"));
                obj.setEmail(rs.getString("email"));
                obj.setConf_email(rs.getString("conf_email"));
                lista.add(obj);
            }
        } catch (Exception e) {
            e.printStackTrace();
        }finally{
            try {
                if (con != null) {
                    con.close();
                }
                if (rs != null) {
                    rs.close();
                }
                if (ps != null) {
                    ps.close();
                }
            } catch (Exception e) {
                e.printStackTrace();
            }
        }
        
        return lista;
    }
}
