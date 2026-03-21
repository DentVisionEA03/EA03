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
                
        <div>

                <label>Nombres:</label>

                <%-- Validación 2: Campo obligatorio --%>

                <input type="text" name="nombres" required>

            </div>



            <div>

                <label>Apellidos:</label>

                <input type="text" name="apellidos" required>

            </div>



            <div>

                <label>Correo Electrónico:</label>

                <%-- Validación 3: Formato de email correcto --%>

                <input type="email" name="email" placeholder="ejemplo@correo.com" required>

            </div>



            <br>

            <button type="submit" name="accion" value="guardar">Guardar Usuario</button>

            <a href="UsuarioServlet?accion=listar">Cancelar y Volver</a>

            

        </form>



        <%-- Espacio para mensajes de éxito o error (Plus de la evidencia) --%>

        <c:if test="${not empty mensaje}">

            <p style="color: blue;">${mensaje}</p>

        </c:if>

   
        
                
    </body>
</html>
