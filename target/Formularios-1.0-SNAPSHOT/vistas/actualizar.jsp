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

            <label>Documento:</label><br>
            <input type="text" name="txtDocumento" value="${usuario.documento}" required>
            <br><br>

            <label>Nombres:</label><br>
            <input type="text" name="txtNombres" value="${usuario.nombres}" required>
            <br><br>

            <label>Apellidos:</label><br>
            <input type="text" name="txtApellidos" value="${usuario.apellidos}" required>
            <br><br>
            
            <label>Correo Electrónico:</label><br>
            <input type="email" name="txtEmail" value="${usuario.email}" required>
            <br><br>

            <label>Confirmar Correo:</label><br>
            <input type="email" name="txtConfEmail" value="${usuario.conf_email}" required>
            <br><br>

            <label>Nueva Contraseña:</label><br>
            <input type="password" name="txtPass" placeholder="Dejar en blanco para no cambiar">
            <br><br>

            <button type="submit">Actualizar Registro</button>
            <a href="usuariosControlador?accion=listar">Regresar al listado</a>
        </form>

            
    </body>
</html>
