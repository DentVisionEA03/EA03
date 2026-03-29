<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <title>Buscar Usuario</title>
</head>
<body>

<h2>Buscar usuario por ID</h2>

<!-- FORMULARIO -->
<form action="usuariosControladorVJ" method="get">
    
    <input type="hidden" name="accion" value="buscar">

    <label>Ingrese el ID:</label>
    <input type="number" name="id" placeholder="Ej: 1" required>

    <button type="submit">Buscar</button>

</form>

<hr>

<!-- RESULTADO -->
<%
com.mycompany.formularios.modelo.usuarios u =
    (com.mycompany.formularios.modelo.usuarios) request.getAttribute("usuario");

if (u != null) {
%>

    <h3>Usuario encontrado</h3>

    <p><b>ID:</b> <%= u.getId() %></p>
    <p><b>Nombres:</b> <%= u.getNombres() %></p>
    <p><b>Apellidos:</b> <%= u.getApellidos() %></p>
    <p><b>Email:</b> <%= u.getEmail() %></p>

<%
}
%>

<!-- MENSAJE SI NO ENCUENTRA -->
<%
String mensaje = (String) request.getAttribute("mensaje");

if (mensaje != null) {
%>
    <p style="color:red;"><%= mensaje %></p>
<%
}
%>

</body>
</html>