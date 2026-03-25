<%-- 
    Document   : indexVJ
    Created on : 25/03/2026, 2:14:42 p. m.
    Author     : jeffry
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Formularios</title>
    </head>
    <body>
        <h1>Hello World!</h1>
         <%
            response.sendRedirect("usuariosControladorVJ?accion=listar");
            %>
    </body>
</html>
