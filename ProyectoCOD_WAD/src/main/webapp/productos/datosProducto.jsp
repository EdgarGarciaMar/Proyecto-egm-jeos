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
                 font-size: 120%;
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
        <title>Datos de Producto</title>
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
            <br/>
            <div class="card bg-light">
                <div class="card-header head">
                    <h3 class="text-center">Datos de Producto</h3>
                </div>
                <div class="card-body">
                    <center>
                        <c:if test="${producto.entidad.idProducto == 2}">
                         <img src="https://i.ytimg.com/vi/2e59Rn1vxDY/maxresdefault.jpg" alt=".50 GS" width="300" class="d-inline-block align- imagen pistola"text-top" style="margin-left:5%; margin-bottom:5%">
                        </c:if>
                        <c:if test="${producto.entidad.idProducto == 3}">
                         <img src="https://titles.trackercdn.com/modern-warfare/db/images/icon_cac_weapon_pi_papa320.png?10697530" alt="m19" width="300" class="d-inline-block align-text-top" style="margin-left:5%; margin-bottom:5%">
                        </c:if>
                         <c:if test="${producto.entidad.idProducto == 4}">
                         <img src="https://juegocentrar.com/wp-content/uploads/2021/07/Mejor-equipamiento-X16-para-CoD-Warzone-Season-4.jpg" alt="x16" width="300" class="d-inline-block align-text-top" style="margin-left:5%; margin-bottom:5%">
                        </c:if>
                         <c:if test="${producto.entidad.idProducto == 5}">
                         <img src="https://gamewith-en.akamaized.net/article_tools/cod-coldwar/gacha/22123.png" alt="1911" width="300" class="d-inline-block align-text-top" style="margin-left:5%; margin-bottom:5%">
                        </c:if>
                         <c:if test="${producto.entidad.idProducto == 6}">
                         <img src="https://static1-es.millenium.gg/articles/6/39/54/6/@/203690-1-article_m-1.jpg" alt="m13" width="300" class="d-inline-block align-text-top" style="margin-left:5%; margin-bottom:5%">
                        </c:if>
                        <c:if test="${producto.entidad.idProducto == 7}">
                         <img src="https://xboxplay.games/uploadStream/21257.jpg" alt="FR 5.56" width="300" class="d-inline-block align-text-top" style="margin-left:5%; margin-bottom:5%">
                        </c:if>
                         <c:if test="${producto.entidad.idProducto == 8}">
                         <img src="https://titles.trackercdn.com/modern-warfare/db/images/icon_cac_weapon_ar_mike4.png?10697530" alt="M4A1" width="300" class="d-inline-block align-text-top" style="margin-left:5%; margin-bottom:5%">
                        </c:if>
                         <c:if test="${producto.entidad.idProducto == 9}">
                         <img src="https://titles.trackercdn.com/modern-warfare/db/images/icon_cac_weapon_sh_romeo870.png?10697530" alt="Modelo 680" width="300" class="d-inline-block align-text-top" style="margin-left:5%; margin-bottom:5%">
                        </c:if><c:if test="${producto.entidad.idProducto == 10}">
                         <img src="https://areajugones.sport.es/wp-content/uploads/2020/03/725.png" alt="725" width="250" class="d-inline-block align-text-top" style="margin-left:5%; margin-bottom:5%">
                        </c:if>
                        <c:if test="${producto.entidad.idProducto == 11}">
                         <img src="https://i.ytimg.com/vi/DpA0WfesACM/maxresdefault.jpg" alt="R9-0" width="300" class="d-inline-block align-text-top" style="margin-left:5%; margin-bottom:5%">
                        </c:if>
                         <c:if test="${producto.entidad.idProducto == 12}">
                         <img src="https://juegocentrar.com/wp-content/uploads/2021/05/1620760704_Mejor-equipamiento-de-AX-50-para-CoD-Warzone-Season-3.jpg" alt="Ax-50" width="300" class="d-inline-block align-text-top" style="margin-left:5%; margin-bottom:5%">
                        </c:if>
                         <c:if test="${producto.entidad.idProducto == 13}">
                         <img src="https://eltiotech.net/wp-content/uploads/1632013766_497_COD-Warzone-el-mejor-equipamiento-de-Dragunov-Warzone-en-la.jpg" alt="Dragunov" width="300" class="d-inline-block align-text-top" style="margin-left:5%; margin-bottom:5%">
                        </c:if>
                         
                        <ul class="list-group">
                            <li class="list-group-item">
                                
                                <c:out value="${producto.entidad.idProducto}" />
                            </li>
                            <li class="list-group-item">
                                <c:out value="${producto.entidad.nombreProducto}" />
                            </li>
                            <li class="list-group-item">
                                <c:out value="${producto.entidad.descripcionProducto}" />
                            </li>
                            <li class="list-group-item">
                                <c:out value="${producto.entidad.precio}" />
                            </li>
                            <li class="list-group-item">
                                <c:out value="${producto.entidad.existencia}" />
                            </li>
                            <li class="list-group-item">
                                <c:out value="${producto.entidad.stockMinimo}" />
                            </li>
                            <li class="list-group-item">
                                <c:out value="${producto.entidad.claveCategoria}" />
                            </li>
                        </ul>
                    </center>
                </div>
            </div>
                          
        </div>
    </body>
</html>
