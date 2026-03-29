<%-- 
    Document   : crearJ
    Author     : jeffry
--%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Nuevo Usuario - Dentivision</title>

    <script>
        function validarFormulario() {
            let email = document.getElementsByName("email")[0].value;
            let confEmail = document.getElementsByName("conf_email")[0].value;
            let pass = document.getElementsByName("contrasena")[0].value;
            let confPass = document.getElementsByName("conf_contrasena")[0].value;

            if (email !== confEmail) {
                alert("Los correos no coinciden");
                return false;
            }

            if (pass !== confPass) {
                alert("Las contraseñas no coinciden");
                return false;
            }

            return true;
        }
    </script>
</head>

<body>

    <h2>Registrar Nuevo Usuario</h2>       

    <form action="usuariosControladorVJ" method="POST" onsubmit="return validarFormulario()">            

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
            <input type="text" name="documento" pattern="[0-9]{7,12}" 
                   title="Ingrese solo números (7 a 12 dígitos)" required>
        </div>          
        
        <div>
            <label>Nombres:</label>
            <input type="text" name="nombres" required>
        </div>
        
        <div>
            <label>Apellidos:</label>
            <input type="text" name="apellidos" required>
        </div>
        
        <div>
            <label>Correo Electrónico:</label>
            <input type="email" name="email" placeholder="ejemplo@correo.com" required>
        </div>

        <div>
            <label>Confirmar Correo Electrónico:</label>
            <input type="email" name="conf_email" placeholder="ejemplo@correo.com" required>
        </div>

        <div>
            <label>Contraseña:</label>
            <input type="password" name="contrasena" placeholder="Ingrese contraseña" required>
        </div>

        <div>
            <label>Confirmar Contraseña:</label>
            <input type="password" name="conf_contrasena" placeholder="Repita contraseña" required>
        </div>

        <br>

        <button type="submit" name="accion" value="guardar">Guardar Usuario</button>
        <a href="usuariosControladorVJ?accion=listar">Cancelar</a>

    </form>

    <br>

    <!-- MENSAJES -->
    <c:if test="${not empty mensaje}">
        <p style="color: green;">${mensaje}</p>
    </c:if>

    <c:if test="${not empty error}">
        <p style="color: red;">${error}</p>
    </c:if>

</body>
</html>