package com.mycompany.formularios.Dao;

import com.mycompany.formularios.modelo.usuarios;
import com.mycompany.formularios.config.conexion;
import java.sql.*; 
import java.util.ArrayList;

public class UsuariosDAOVJ {

    private Connection con = null;
    private PreparedStatement ps = null;
    private ResultSet rs = null;
    
    //  LISTAR TODOS
    public ArrayList<usuarios> ListarTodos(){
        ArrayList<usuarios> lista = new ArrayList<>();
        
        try {
            con = conexion.getConnection();
            String sql = "SELECT * FROM usuarios";
            ps = con.prepareStatement(sql);
            rs = ps.executeQuery();
            
            while (rs.next()) {                
                usuarios obj = new usuarios();
                obj.setId(rs.getInt("id"));
                obj.setTipo_documento(rs.getString("tipo_documento"));
                obj.setDocumento(rs.getString("documento"));
                obj.setNombres(rs.getString("nombres"));
                obj.setApellidos(rs.getString("apellidos"));
                obj.setEmail(rs.getString("email"));
                obj.setConf_email(rs.getString("conf_email"));
                obj.setContrasena(rs.getString("contrasena"));
                obj.setConf_contrasena(rs.getString("conf_contrasena"));
                lista.add(obj);
            }
        } catch (Exception e) {
            e.printStackTrace();
        } finally {
            cerrarRecursos();
        }
        
        return lista;
    }

    //  MÉTODO CREAR USUARIO (INSERTAR-GUARDAR)
    public boolean insertar(usuarios u){
        boolean resultado = false;

        try {
            con = conexion.getConnection();

            String sql = "INSERT INTO usuarios "
                    + "(tipo_documento, documento, nombres, apellidos, email, conf_email, contrasena, conf_contrasena) "
                    + "VALUES (?, ?, ?, ?, ?, ?, ?, ?)";

            ps = con.prepareStatement(sql);

            ps.setString(1, u.getTipo_documento());
            ps.setString(2, u.getDocumento());
            ps.setString(3, u.getNombres());
            ps.setString(4, u.getApellidos());
            ps.setString(5, u.getEmail());
            ps.setString(6, u.getConf_email());
            ps.setString(7, u.getContrasena());
            ps.setString(8, u.getConf_contrasena());

            int filas = ps.executeUpdate();

            if (filas > 0) {
                resultado = true;
            }

        } catch (Exception e) {
            e.printStackTrace();
        } finally {
            cerrarRecursos();
        }

        return resultado;
    }
    
    
    // MÉTODO BUSCAR POR ID
public usuarios buscarPorId(int id) {
    usuarios u = null;

    try {
        con = conexion.getConnection();

        String sql = "SELECT * FROM usuarios WHERE id = ?";
        ps = con.prepareStatement(sql);
        ps.setInt(1, id);

        rs = ps.executeQuery();

        if (rs.next()) {
            u = new usuarios();
            u.setId(rs.getInt("id"));
            u.setTipo_documento(rs.getString("tipo_documento"));
            u.setDocumento(rs.getString("documento"));
            u.setNombres(rs.getString("nombres"));
            u.setApellidos(rs.getString("apellidos"));
            u.setEmail(rs.getString("email"));
            u.setConf_email(rs.getString("conf_email"));
            u.setContrasena(rs.getString("contrasena"));
            u.setConf_contrasena(rs.getString("conf_contrasena"));
        }

    } catch (Exception e) {
        e.printStackTrace();
    } finally {
        cerrarRecursos();
    }

    return u;
}

    //  MÉTODO PARA CERRAR CONEXIONES
    private void cerrarRecursos(){
        try {
            if (rs != null) rs.close();
            if (ps != null) ps.close();
            if (con != null) con.close();
        } catch (Exception e) {
            e.printStackTrace();
        }
    }
}