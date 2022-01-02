<%-- 
    Document   : listaProductos
    Created on : 17 oct. 2021, 14:22:57
    Author     : edgar y lalo
--%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.0/dist/css/bootstrap.min.css" rel="stylesheet">
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.0/dist/js/bootstrap.bundle.min.js"></script>
        <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.9.3/dist/umd/popper.min.js"></script>
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.0/dist/js/bootstrap.min.js"></script>
        
         <style type="text/css">
            *{
              padding: 0;
              margin: 0;
             }
             
             body{
                 background-image:url('http://www.defondos.com/images/wallpapers/white%20wallpaper%20(30)-991074_800.jpeg');
                 background-size:cover;
             }
             
             .navbar{
                 font-size: 120%;
             }
            
        </style>

        <title>Productos</title>
    </head>
    <body>
        <div class="container">


            <nav class="navbar navbar-expand-lg navbar-light bg-light">
                <div class="container-fluid">
                    <a class="navbar-brand" href="#">
                        <img src="/imagenes/bootstrap-logo.svg" alt="" width="30" height="24" class="d-inline-block align-text-top">
                        Práctica Final
                    </a>
                    <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarNavDropdown" aria-controls="navbarNavDropdown" aria-expanded="false" aria-label="Toggle navigation">
                        <span class="navbar-toggler-icon"></span>
                    </button>
                    <div class="collapse navbar-collapse" id="navbarNavDropdown">
                        <ul class="navbar-nav">
                            <li class="nav-item">
                                <a class="nav-link active" aria-current="page" href="../index.jsp">Inicio</a>
                            </li>
                            <li class="nav-item">
                                <a class="nav-link" href="CategoriaServlet?accion=listaDeCategorias">Listado De Categorias</a>
                            </li>
                            <li class="nav-item">
                                <a class="nav-link" href="CategoriaServlet?accion=nuevo">Nueva Categoria</a>
                            </li>
                            <li class="nav-item">
                                <a class="nav-link" href="ProductoServlet?accion=listaDeProductos">Listado de Productos</a>
                            </li>
                            <li class="nav-item">
                                <a class="nav-link" href="ProductoServlet?accion=nuevo">Nuevo Producto</a>
                            </li>
                           <li class="nav-item">
                                                            <a class="nav-link" href="UsuarioServlet?accion=listaDeUsuarios">Listado de Usuarios</a>
                                                        </li>
                                                        <li class="nav-item">
                                                            <a class="nav-link" href="UsuarioServlet?accion=nuevo">Nuevo Usuario</a>
                            </li>
                        </ul>
                    </div>
                </div>
            </nav>
            
            <br/>
            <h1>Productos: Armas a escala coleccionables</h1>
            <br/><br/>

            <div class="row">
                <div class="col col-lg-2">
                    <h4 class="card-title">
                        <a href="ProductoServlet?accion=nuevo" class="btn btn-outline-success">Crear Producto</a>
                    </h4>
                </div>
                <div class="col">

                </div>
                <div class="col col-lg-2">
                    <h4 class="card-title">
                        <a href="ProductoServlet?accion=graficar" class="btn btn-outline-primary" target="_blank">Mostrar Grafica</a>
                    </h4>
                </div>                 
                <div class="col col-lg-2">
                    <h4 class="card-title">
                        <a href="ProductoServlet?accion=verReporte" class="btn btn-outline-danger" target="_blank">Mostrar Reporte</a>
                    </h4>
                </div>
            </div>

            <c:if test="${mensaje != null}">
                <div class="alert alert-success alert-dismissible fade show" role="alert">
                    <strong>${mensaje}</strong>
                    <button class="btn-close" data-bs-dismiss="alert" aria-lbel="Close"></button>
                </div>
            </c:if>


            <div>
                <div class="card-header text-center" style="font-size:120%">
                    Productos
                </div>
                <div class="card-body">

                    <table class="table table-dark">
                        <thead>
                            <tr class="table-active">
                                <th>Clave</th>
                                <th>Nombre</th>
                                <th>Descripcion</th>
                                <th>Precio</th>
                                <th>Existencia</th>
                                <th>Stock Minimo</th>
                                <th>Categoria (Clave)</th>
                                <th>Eliminar</th>
                                <th>Actualizar</th>
                                <th>Comprar</th>
                            </tr>
                        </thead>
                        <c:forEach var="dto" items="${listaDeProductos}">
                            <tbody>
                                <tr class="table table-dark">
                                    <td class="table-active">
                                        <a href="ProductoServlet?accion=ver&id=<c:out value="${ dto.entidad.idProducto }"/>" class="btn btn-warning">
                                            <c:out value="${ dto.entidad.idProducto }"/>
                                        </a>
                                    </td>
                                    <td class="table-primary">
                                        <c:out value="${ dto.entidad.nombreProducto }"/>
                                    </td>
                                    <td class="table-primary">
                                        <c:out value="${ dto.entidad.descripcionProducto }"/>
                                    </td>
                                    <td class="table-primary">
                                        <c:out value="${ dto.entidad.precio }"/>
                                    </td>
                                    <td class="table-primary">
                                        <c:out value="${ dto.entidad.existencia }"/>
                                    </td>
                                    <td class="table-primary">
                                        <c:out value="${ dto.entidad.stockMinimo }"/>
                                    </td>
                                    <td class="table-primary">
                                        <c:out value="${ dto.entidad.claveCategoria }"/>
                                    </td>
                                    <td class="table-primary">
                                        <a href="ProductoServlet?accion=eliminar&id=<c:out value="${ dto.entidad.idProducto }"/>" class="btn btn-danger">Eliminar</a>
                                    </td>
                                    <td class="table-primary">
                                        <a href="ProductoServlet?accion=actualizar&id=<c:out value="${ dto.entidad.idProducto }"/>" class="btn btn-success">Actualizar</a>
                                    </td>
                                    <td>
                                        <a href="ProductoServlet?accion=comprar&id=<c:out value="${ dto.entidad.idProducto }"/>" class="btn btn-outline-info">Comprar</a>
                                    </td>
                                </tr>
                            </tbody>
                        </c:forEach>
                    </table>
                </div>
            </div>
        </div>
    </body>
</html>
