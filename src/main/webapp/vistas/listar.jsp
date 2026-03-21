<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib  prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.8/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-sRIl4kxILFvY47J16cr9ZwB07vP4J8+LH7qKQnuqkuIAvNWLzeN8tE5YBujZqJLB" crossorigin="anonymous">
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/7.0.1/css/all.min.css" integrity="sha512-2SwdPD6INVrV/lHTZbO2nodKhrnDdJK9/kg2XD1r9uGqPo1cUbujc+IYdlYdEErWNu69gVcYgdxlmVmzTWnetw==" crossorigin="anonymous" referrerpolicy="no-referrer" />
        <title>Registro de usuarios</title>
    </head>
    <body>
        <div class="container mt-3">
            <div class="card">
                <div class="card-body">
                    <h3 class="text-center">Gestion Usuarios</h3>
                    <hr />
                    
                    <a href="" class="btn btn-success btn-m">
                        <i class="fa fa-plus-circle"></i>Nuevo
                    </a>
                    <table class="table table-bordered table-striped mt-2">
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
                            <c:forEach items="${Usuarios}" var="item">
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
                            <c:if test="${Usuarios.size() == 0}">
                                <tr>
                                    <td colspan="9">
                                        No hay registros
                                    </td>
                                </tr>
                            </c:if>
                        </tbody>
                        </thead>
                    </table>
                </div>
            </div>
        </div>
    </body>
</html>
