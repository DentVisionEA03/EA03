<%-- 
    Document   : actualizar
    Created on : 21/03/2026, 9:25:11 a. m.
    Author     : Juan Camilo
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Actualizar Usuario</title>
    </head>
    <body>
        <h2>Modificar Datos de Usuario</h2>
        
        <form action="usuariosControlador" method="POST">
            
            <input type="hidden" name="accion" value="actualizar">
            
            <input type="hidden" name="txtId" value="${usuario.id}">

            <label>Tipo de Documento:</label><br>
            <select name="txtTipoDoc" required>
                <option value="CC" ${usuario.tipo_documento == 'CC' ? 'selected' : ''}>Cédula de Ciudadanía</option>
                <option value="TI" ${usuario.tipo_documento == 'TI' ? 'selected' : ''}>Tarjeta de Identidad</option>
                <option value="CE" ${usuario.tipo_documento == 'CE' ? 'selected' : ''}>Cédula de Extranjería</option>
            </select>
            <br><br>

            

            
    </body>
</html>
