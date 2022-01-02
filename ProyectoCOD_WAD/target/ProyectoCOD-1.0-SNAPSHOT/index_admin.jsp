<%-- 
    Document   : index
    Created on : 15 oct. 2021, 11:56:57
    Author     : edgar y lalo
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>

<%
    HttpSession sesion = request.getSession();
    if (sesion.getAttribute("dtoUsuario") == null) {
        response.sendRedirect("iniciarSesion.jsp");
        return;
    }
%>
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
                 margin-top: 5%;
             }
             h1{
               margin-left: 25%;
               font-family: 'Alfa Slab One', cursive;
               animation-name: titulo-anim;
               animation-duration: 1s;
               animation-direction:alternate-reverse;
               animation-iteration-count: infinite;
             }
             
             .imagen{
               display: flex;
               justify-content: center;
             }
             
             .imgC{
                 width: 70%;
                 margin-top: 4%;
             }
             
             @keyframes beat {
                 20%{
                     transform: scale(1);
                 }
                 0%{
                     transform: scale(2);
                 }
             }
             @keyframes cart{
                 0% {
                     transform: scaleY(0.1);
                     transform: scaleY(0.1);
                 }
                 100% {
                     transform: scaleY(1);
                     transform: scaleY(1);
                 }
             }
             @keyframes titulo-anim{
                 0%{
                     transform: scale(1);
                 }
                 100%{
                     transform: scale(0.8);
                 }   
             }
        </style>  

        <title>Cod Corp Admin</title>
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

            <div class="cont">
                <h1>Bienvenido Administrador</h1>
            <div class="imagen">
                <img src="https://c4.wallpaperflare.com/wallpaper/209/251/804/cod-mw-ghost-call-of-duty-hd-wallpaper-preview.jpg" alt="Bienvenido" class="imgC">
            </div>


        </div>
    </body>
</html>
