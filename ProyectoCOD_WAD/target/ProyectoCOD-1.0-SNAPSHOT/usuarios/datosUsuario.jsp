<%-- 
    Document   : datosProducto
    Created on : 17 oct. 2021, 14:55:27
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
                 font-size: 95%;
                 background-color: #2D2E2E;
             }
             
             .cont{
                 margin-left:20%; 
                 width: 60%;
             }
            .head{
               background-color: #3C3D3C;
             }
             
            h3{
               font-family: 'Alfa Slab One', cursive; 
               color:#FFF;
             }
            
        </style>
        
        <title>Datos de Usuario</title>
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
                                <a class="nav-link active" aria-current="page" href="index_admin.jsp" style="color:#FFF">Inicio</a>
                            </li>
                            <li class="nav-item">
                                <a class="nav-link" href="CategoriaServlet_admin?accion=listaDeCategorias" style="color:#FFF" >Listado De Categorias</a>
                            </li>
                            <li class="nav-item">
                                <a class="nav-link" href="CategoriaServlet_admin?accion=nuevo" style="color:#FFF">Nueva Categoria</a>
                            </li>
                            <li class="nav-item">
                                <a class="nav-link" href="ProductoServlet_admin?accion=listaDeProductos" style="color:#FFF">Listado de Productos</a>
                            </li>
                            <li class="nav-item">
                                <a class="nav-link" href="ProductoServlet_admin?accion=nuevo" style="color:#FFF">Nuevo Producto</a>
                            </li>
                           <li class="nav-item">
                                <a class="nav-link" href="UsuarioServlet?accion=listaDeUsuarios" style="color:#FFF">Listado de Usuarios</a>
                            </li>
                            <li class="nav-item">
                                <a class="nav-link" href="UsuarioServlet?accion=nuevo" style="color:#FFF">Nuevo Usuario</a>
                            </li>
                        </ul>
                    </div>
                </div>
            </nav>

            <br/>

            <div class="col-12">

                <div class="card bg-light">
                    <div class="card-header head">
                        <h3 class="text-center">Datos de Usuario</h3>
                    </div>
                    <div class="card-body">
                    <center>
                        <img src="./imagenes/user.png" alt="" width="200" class="d-inline-block align-text-top" style="margin-bottom:3%">
                        <ul class="list-group">
                            <li class="list-group-item">
                                
                                <c:out value="${usuario.entidad.idUsuario}" />
                            </li>
                            <li class="list-group-item">
                                <c:out value="${usuario.entidad.nombre}" />
                            </li>
                            <li class="list-group-item">
                                <c:out value="${usuario.entidad.paterno}" />
                            </li>
                            <li class="list-group-item">
                                <c:out value="${usuario.entidad.materno}" />
                            </li>
                            <li class="list-group-item">
                                <c:out value="${usuario.entidad.email}" />
                            </li>
                        </ul>
                    </center>
                </div>
                </div>
            </div>

        </div>
    </body>
</html>
