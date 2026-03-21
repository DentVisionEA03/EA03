/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package com.mycompany.formularios.modelo;

/**
 *
 * @author Creyese23
 */
public class usuarios {
    private int id;
    private String tipo_documento;
    private String documento;
    private String nombres;
    private String apellidos;
    private String email;
    private String conf_email;
    private String contrasena;
    private String conf_contrasena;
/*
    public usuarios() {
    }

    public usuarios(int id, String tipo_documento, String documento, String nombres, String apellidos, String email, String conf_email, String contrasena, String conf_contrasena) {
        this.id = id;
        this.tipo_documento = tipo_documento;
        this.documento = documento;
        this.nombres = nombres;
        this.apellidos = apellidos;
        this.email = email;
        this.conf_email = conf_email;
        this.contrasena = contrasena;
        this.conf_contrasena = conf_contrasena;
    }
  */  
    

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getTipo_documento() {
        return tipo_documento;
    }

    public void setTipo_documento(String tipo_documento) {
        this.tipo_documento = tipo_documento;
    }

    public String getDocumento() {
        return documento;
    }

    public void setDocumento(String documento) {
        this.documento = documento;
    }

    public String getNombres() {
        return nombres;
    }

    public void setNombres(String nombres) {
        this.nombres = nombres;
    }

    public String getApellidos() {
        return apellidos;
    }

    public void setApellidos(String apellidos) {
        this.apellidos = apellidos;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public String getConf_email() {
        return conf_email;
    }

    public void setConf_email(String conf_email) {
        this.conf_email = conf_email;
    }

    public String getContrasena() {
        return contrasena;
    }

    public void setContrasena(String contrasena) {
        this.contrasena = contrasena;
    }

    public String getConf_contrasena() {
        return conf_contrasena;
    }

    public void setConf_contrasena(String conf_contrasena) {
        this.conf_contrasena = conf_contrasena;
    }

    
    
    
}
