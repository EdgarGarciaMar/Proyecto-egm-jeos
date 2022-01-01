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

            .imagen{
                display: flex;
                justify-content: center;
            }

            .imgC{
                width: 80%;
                margin-top: 15%;
            }
        </style>  

        <title>Ejercicio3</title>
    </head>
    <body>
        <div class="container">



            <nav class="navbar navbar-expand-lg navbar-light bg-light">
                <div class="container-fluid">
                    <a class="navbar-brand" href="#">
                        <img src="/imagenes/bootstrap-logo.svg" alt="" width="30" height="24" class="d-inline-block align-text-top">
                        Practica Final
                    </a>
                    <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarNavDropdown" aria-controls="navbarNavDropdown" aria-expanded="false" aria-label="Toggle navigation">
                        <span class="navbar-toggler-icon"></span>
                    </button>
                    <div class="collapse navbar-collapse" id="navbarNavDropdown">
                        <ul class="navbar-nav">
                            <li class="nav-item">
                                <a class="nav-link active" aria-current="page" href="index.jsp">Inicio</a>
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

            <div class="imagen">
                <img src="https://i.pinimg.com/originals/e8/b3/6a/e8b36aa28b117a74853c3c27d30e35d5.gif" alt="Bienvenido" class="imgC">
            </div>

            <div class="col-md-12">
                <h1>Call of Duty</h1>
            </div>

            <div class="row">
                <div class="col">
                    <p align="justify"> <b>Call of Duty</b> es una serie de unos videojuegos de disparos en primera persona, de estilo bélico
                        , desarrollada principal e inicialmente por Infinity Ward, Treyarch, Sledgehammer Games y en menor 
                        proporción Raven Software y distribuida por Activision. La franquicia comenzó para computadora personal y 
                        posteriormente fue expandiéndose hacia videoconsolas de sexta y séptima generación, tanto de sobremesa como 
                        portátiles, llegando así, a lanzar varios juegos derivados de forma paulatina con la serie principal.</p>
                </div>
                <div class="col">
                    <div class="imagen">
                        <img src="/imagenes/logo.png" alt="COD" class="imgC">
                    </div>
                </div>
            </div>
            <div class="row">
                <div class="col">
                    <h1>Call of Duty Warzone</h1>
                    <p align="justify"> <b>Warzone</b> es un videojuego de disparos en primera persona, perteneciente al Battle royale gratuito, 
                        lanzado el 10 de marzo de 2020 para PlayStation 4, PlayStation 5, Xbox One, Xbox Series X|S y Microsoft Windows. El modo 
                        juego está disponible en estas plataformas y es parte del videojuego de 2019, Call of Duty: Modern Warfare, pero no requiere 
                        su compra y se presentó durante la temporada 2 del contenido de Modern Warfare. Con la integración con Call of Duty: Vanguard 
                        pasó a denominarse Call of Duty: Warzone Pacific.
                        Call of Duty: Warzone fue desarrollado por Infinity Ward y Raven Software y publicado por Activision. Warzone permite el combate 
                        multijugador en línea entre 150 jugadores, aunque algunos modos de juego por tiempo limitado admiten 200 jugadores. El juego presenta 
                        tanto un juego multiplataforma como una progresión multiplataforma entre tres juegos.
                        El juego presenta tres modos principales: Saqueo (botín), resurgimiento y Battle royale. </p>
                    <div class="imagen">
                        <img src="/imagenes/wz.png" alt="CODWZ" class="imgC">
                    </div>
                    <br>
                    <br>
                </div>
                <div class="col">
                    <h1>Call of Duty Mobile</h1>
                        <p align="justify"> <b>COD Mobile</b> es un juego tipo shooter desarrollado por Activision y TiMi Studios de Tencent Games para la 
                            plataforma de Android e IOS. Fue lanzado el 1 de octubre de 2019. En su primer mes el juego tuvo más de 148 millones de descargas y 
                            generó casi US$ 54 millones en ingresos.​ A finales de 2019, el juego ya obtuvo más de 180 millones de descargas en solo tres meses 
                            después del lanzamiento, convirtiéndose en el juego más descargado del cuarto trimestre y el juego más descargado del año.​ 
                            Adicionalmente, está disponible en varios idiomas, a excepción de las voces que solo se encuentran en inglés. </p>
                    <div class="imagen">
                        <img src="/imagenes/mobile.png" alt="CODMobile" class="imgC">
                    </div>
                    <br>
                    <br>
                </div>
                <div class="col">
                    <h1 align="center">Creadores del sitio</h1>
                    <h2 align="center"> García Marciano Edgar</h2>
                    <h2 align="center">Olay Silis José Eduardo</h2>
                    <h3 align="center">Grupo: 3CM13</h3>
                    <h3 align="center">Materia: WAD</h3>
                </div>
            </div>
        </div>
    </body>
</html>
