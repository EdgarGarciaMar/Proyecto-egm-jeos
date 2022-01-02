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
            @import url('https://fonts.googleapis.com/css2?family=Bree+Serif&display=swap');
            @import url('https://fonts.googleapis.com/css2?family=Zilla+Slab:wght@300&display=swap');
            
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
            
            .imgC{
                 width: 80%;
                 margin-top: 15%;
                 margin-left: 10%;
                 animation-name: titulo-anim;
                 animation-duration: 1s;
                 animation-direction:alternate-reverse;
                 animation-iteration-count: infinite;
             }
             
             .imagen{
                 width: 50%;
             }
             
             h1{
               font-family: 'Alfa Slab One', cursive;  
             }
             
             p{
                font-family: 'Bree Serif', serif; 
             }
             
             .Duty{
                 margin-top: 3%;
             }
             
             .contacto{
                 margin-top:3%;
             }
             
             h2{
               font-family: 'Zilla Slab', serif;  
             }
             
             h3{
               font-family: 'Zilla Slab', serif;  
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

        <title>Inicio</title>
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

            <div class="row">
                <div class="col Duty">
                    <h1>Call of Duty</h1>
                    <p align="justify"> <b>Call of Duty</b> es una serie de unos videojuegos de disparos en primera persona, de estilo bélico
                        , desarrollada principal e inicialmente por Infinity Ward, Treyarch, Sledgehammer Games y en menor 
                        proporción Raven Software y distribuida por Activision. La franquicia comenzó para computadora personal y 
                        posteriormente fue expandiéndose hacia videoconsolas de sexta y séptima generación, tanto de sobremesa como 
                        portátiles, llegando así, a lanzar varios juegos derivados de forma paulatina con la serie principal.</p>
                </div>
                <div class="col">
                    <div class="imag">
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
                </div>    
                <div class="col">
                        <img src="/imagenes/wz.png" alt="CODWZ" class="imgC">
                </div>
            </div> 
            
            <div class="row">
                <div class="col">
                    <h1>Call of Duty Mobile</h1>
                        <p align="justify"> <b>COD Mobile</b> es un juego tipo shooter desarrollado por Activision y TiMi Studios de Tencent Games para la 
                            plataforma de Android e IOS. Fue lanzado el 1 de octubre de 2019. En su primer mes el juego tuvo más de 148 millones de descargas y 
                            generó casi US$ 54 millones en ingresos.​ A finales de 2019, el juego ya obtuvo más de 180 millones de descargas en solo tres meses 
                            después del lanzamiento, convirtiéndose en el juego más descargado del cuarto trimestre y el juego más descargado del año.​ 
                            Adicionalmente, está disponible en varios idiomas, a excepción de las voces que solo se encuentran en inglés. </p>
                 </div>   
                 <div class="col">
                        <img src="/imagenes/mobile2.png" alt="CODMobile" class="imgC">
                    </div> 
            </div>
            
            <div class="row contacto">
                    <h1 align="center">Creadores del sitio</h1>
                    <h2 align="center"> García Marciano Edgar</h2>
                    <h2 align="center">Olay Silis José Eduardo</h2>
                    <h3 align="center">Grupo: 3CM13</h3>
                    <h3 align="center">Materia: WAD</h3> 
            </div>
        </div>
    </body>
</html>
