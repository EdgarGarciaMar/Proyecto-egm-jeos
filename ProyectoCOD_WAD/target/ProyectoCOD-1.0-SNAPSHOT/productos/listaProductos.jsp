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
             @import url('https://fonts.googleapis.com/css2?family=Alfa+Slab+One&family=Andada+Pro&display=swap');
             
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
                background-color: #2D2E2E;
             }
             
             h1{
               font-family: 'Alfa Slab One', cursive;  
             }
             
             .ojo{
                 margin-bottom: 20%;
                 margin-left: -10%;
             }
            
        </style>

        <title>Productos</title>
    </head>
    <body>
        <div class="container">
            
           <nav class="navbar navbar-expand-lg navbar-light ">
                <div class="container-fluid">
                    <a class="navbar-brand" href="#">
                        <img src="/imagenes/codC.png" alt="logo cod Corp" width="150" class="d-inline-block align-text-top">
                    </a>
                    <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarNavDropdown" aria-controls="navbarNavDropdown" aria-expanded="false" aria-label="Toggle navigation" style="color:#9E7409">
                        <span class="navbar-toggler-icon"><img src="./imagenes/lista2.png" alt="imagen usuario" width="30"/></span>
                    </button>
                    <div class="collapse navbar-collapse" id="navbarNavDropdown">
                        <ul class="navbar-nav">
                            <li class="nav-item">
                                <a class="nav-link active " aria-current="page" href="index.jsp" style="color:#FFF">Inicio</a>
                            </li>
                            <li class="nav-item">
                                <a class="nav-link" href="CategoriaServlet?accion=listaDeCategorias" style="color:#FFF">Listado De Categorias</a>
                            </li>
                            <li class="nav-item">
                                <a class="nav-link" href="ProductoServlet?accion=listaDeProductos" style="color:#FFF">Listado de Productos</a>
                            </li>
                        </ul>
                    </div>
                </div>
            </nav>
            
            <br/>
            <h1>Productos: Armas a escala coleccionables</h1>
            <br/><br/>
            
            <div>
                <div class="card-header text-center" style="background-color:#3C3D3C; font-size:120%; color:#FFF;">
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
                                <th>Comprar</th>
                            </tr>
                        </thead>
                        <c:forEach var="dto" items="${listaDeProductos}">
                            <tbody>
                                <tr class="table table-dark">
                                    <td class="table-active">
                                        <a href="ProductoServlet?accion=ver&id=<c:out value="${ dto.entidad.idProducto }"/>">
                                           <span class="navbar-toggler-icon ojo"><img src="./imagenes/ojo.png" alt="logo ojo" width="35"/></span>
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
