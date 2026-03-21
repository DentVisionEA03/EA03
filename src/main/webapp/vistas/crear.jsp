<%-- 
    Document   : crear
    Created on : 21/03/2026, 9:20:25 a. m.
    Author     : Administrador
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Nuevo Usuario - Dentivision</title>
        </head>
    <body>
        <h2>Registrar Nuevo Usuario</h2>
        
              <%-- Formulario que envía datos por POST al Servlet --%>

        <form action="UsuarioServlet" method="POST">

            

            <div>

                <label>Tipo de Documento:</label>

                <select name="tipo_documento" required>

                    <option value="">Seleccione...</option>

                    <option value="CC">Cédula de Ciudadanía</option>

                    <option value="TI">Tarjeta de Identidad</option>

                    <option value="CE">Cédula de Extranjería</option>

                </select>

            </div>



            <div>

                <label>Número de Documento:</label>

                <%-- Validación 1: Solo números y mínimo 7 caracteres --%>

                <input type="text" name="documento" pattern="[0-9]{7,12}" 

                       title="Ingrese solo números (entre 7 y 12 dígitos)" required>

            </div>
        
        
                
    </body>
</html>
