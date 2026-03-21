<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib  prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Registro de usuarios</title>
    </head>
    <body>
        <table>
            <thead>
                <tr>
                    <th>ID</th>
                    <th>TIPO DE DOCUMENTO</th>
                    <th>DOCUMENTO</th>
                    <th>NOMBRES</th>
                    <th>APELLIDOS</th>
                    <th>CORREO</th>
                    <th>ACCIONES</th>
                </tr>
            <tbody>
                <c:forEach items="${usuarios}" var="item">
                    <tr>
                        <td>${item.id}</td>
                        <td>${item.tipo_documento}</td>
                        <td>${item.documento}</td>
                        <td>${item.nombres}</td>
                        <td>${item.apellidos}</td>
                        <td>${item.email}</td>
                        <td></td>
                    </tr>
                </c:forEach>
                <c:if test="${usuarios.size() == 0}">
                    <tr>
                        <td colspan="9">
                            No hay registros
                        </td>
                    </tr>
                </c:if>
            </tbody>
            </thead>
        </table>
    </body>
</html>
