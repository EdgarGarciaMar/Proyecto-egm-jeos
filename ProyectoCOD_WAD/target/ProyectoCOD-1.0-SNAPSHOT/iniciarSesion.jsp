<%-- 
    Document   : iniciarSesion
    Created on : 30 dic. 2021, 21:27:26
    Author     : edgar y lalo
--%>

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
                 background-image:url('https://img.freepik.com/foto-gratis/viejo-fondo-negro-textura-grunge-papel-tapiz-oscuro-pizarra-pizarra-pared-habitacion_1258-28313.jpg?size=626&ext=jpg');
                 background-size:cover;
             }
             
             h1{
               color: #FFF;  
             }
             
             .container{
                 width: 40%;
                 margin-top: 10%; 
             }
             
             .p-5{
                 background-color: #3C3D3C;
                 border-radius: 2cm;
             }
             
             .logo{
               width: 50%;
               margin-bottom: 3%;
               margin-left: 25%;
             }
             
             .form-control{
                  background-color: transparent;
                  color:#FFF;
             }
             .btn{
               background-color: #9E7409;  
             } 
             
             .btn:hover{
               background-color: #66520A;
               color:#FFF;
             } 
        </style>
        
        <title>Inicio COD CORP</title>
    </head>
    <body>
        <div class="container">
            <main class="form-signin">
                <div class="p-5">
                    <form method="POST" action="ProcesarInicioSesion">
                        <img src="./imagenes/codC.png" alt="logo cod corp" class="logo"/>

                        <div class="input-group mb-3">
                            <span class="input-group-text" id="basic-addon1"><img src="./imagenes/user1.png" alt="imagen usuario" width="30"/></span>
                            <input type="text" class="form-control" id="usuario" name="usuario" placeholder="Usuario" >
                        </div>
                        <div class="input-group mb-3">
                            <span class="input-group-text" id="basic-addon1"><img src="./imagenes/contrasena.png" alt="imagen contraseña" width="30"/></span>
                            <input type="password" class="form-control" id="contrasena" name="contrasena" placeholder="Contraseña" >
                        </div>
                        <button class="w-100 btn btn-lg  mt-3" type="submit">Iniciar Sesión</button>
                    </form>
                </div>

            </main>
        </div>
    </body>
</html>

