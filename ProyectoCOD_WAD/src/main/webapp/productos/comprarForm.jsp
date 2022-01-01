<%-- 
    Document   : comprarForm
    Created on : 1 ene. 2022, 13:06:06
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
        <title>Formulario Producto</title>
    </head>
    <body>

        <div class="container">
           

            <br/>
            <br/>

            <div class="card border-primary">
                <div class="card header">
                    <h1 class="text-center">Datos Producto</h1>
                </div>
                <div class="card card-body">
                    <form method="post" action="ProductoServlet?accion=guardarCompra">
                        <div class="mb-3">
                            <label class="form-label">ID </label>
                            <input type="text" 
                                   name="txtIdProducto" 
                                   id="txtIdProducto" 
                                   placeholder="Id del Producto"
                                   readonly value="<c:out value="${producto.entidad.idProducto}"/>"
                                   class="form-control" />
                        </div>
                        <div class="mb-3">
                            <label class="form-label">Nombre: </label>
                            <input type="text" 
                                   name="txtNombre" 
                                   id="txtNombre" 
                                   placeholder="Nombre del producto"
                                   required
                                   maxlenght="50"
                                   value="<c:out value="${producto.entidad.nombreProducto}"/>"
                                   class="form-control" />
                        </div>
                        <div class="mb-3">
                            <label class="form-label">Descripcion: </label>
                            <input type="text" 
                                   name="txtDescripcion" 
                                   id="txtDescripcion" 
                                   placeholder="Descripcion del producto"
                                   required
                                   maxlenght="100"
                                   value="<c:out value="${producto.entidad.descripcionProducto}"/>"
                                   class="form-control" />
                        </div>
                        <div class="mb-3">
                            <label class="form-label">Precio:  </label>
                            <input type="number" 
                                   name="txtPrecio"  
                                   id="txtPrecio" 
                                   placeholder="Precio del producto" 
                                   required
                                   maxlenght="50"
                                   value="<c:out value="${producto.entidad.precio}"/>"
                                   class="form-control"/>
                        </div>
                        <div class="mb-3">
                            <label class="form-label">Existencia: </label>                               
                            <input type="number" 
                                   name="txtExistencia" 
                                   id="txtExistencia" 
                                   step="1" min="1" max="100"
                                   placeholder="Cantidad disponible del producto" 
                                   required
                                   value="<c:out value="${producto.entidad.existencia}"/>"
                                   class="form-control" />
                        </div>
                        <div class="mb-3">
                            <label class="form-label">Stock Minimo: </label>                               
                            <input type="number" 
                                   id="txtStock" 
                                   name="txtStock" 
                                   step="1" min="10" max="100"
                                   placeholder="Cantidad minima en stock del producto" 
                                   required
                                   maxlenght="50"
                                   value="<c:out value="${producto.entidad.stockMinimo}"/>"
                                   class="form-control"/>
                        </div>
                        <div class="mb-3">
                            <label class="form-label">Categoria:  </label>
                            <input type="number"
                                   name="txtClaveCategoria"                                 
                                   id="txtClaveCategoria"
                                   placeholder="Clave de la categoria" 
                                   required
                                   maxlenght="100"
                                   value="<c:out value="${producto.entidad.claveCategoria}"/>"
                                   class="form-control" />
                        </div>
                        <div class="mb-3">
                            <label class="form-label">Cantidad:  </label>
                            <input type="number"
                                   name="txtcantidad"                                 
                                   id="txtcantidad"
                                   placeholder="Cantidad a comprar" 
                                   required
                                   maxlenght="100"
                                   class="form-control" />
                        </div>


                        <div class="mb-3">
                            <label class="form-label">Confirma tu correo:  </label>
                            <input type="text"
                                   name="txtCorreo"                                 
                                   id="txtCorreo"
                                   placeholder="example@correo.com" 
                                   required
                                   maxlenght="100"
                                   class="form-control" />
                        </div>


                        <button type="submit" class="btn btn-outline-primary">Guadar</button>     
                    </form>
                </div>
            </div>
        </div>
    </body>
</html>