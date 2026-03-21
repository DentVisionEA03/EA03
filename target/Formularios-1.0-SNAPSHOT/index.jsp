<%-- 
    Document   : index
    Created on : 2 mar 2026, 11:52:35
    Author     : Creyese23
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Inicio</title>
    </head>
    <body>
        <%
            response.sendRedirect("usuariosControlador?accion=listar");
            %>
    </body>
</html>
