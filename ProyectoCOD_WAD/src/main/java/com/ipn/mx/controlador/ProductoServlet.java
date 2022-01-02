/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.ipn.mx.controlador;

import com.ipn.mx.modelo.dao.ProductoDAO;
import com.ipn.mx.modelo.dto.ProductoDTO;
import com.ipn.mx.modelo.dto.UsuarioDTO;
import com.ipn.mx.utilerias.EnviarMail;
import java.io.File;
import java.io.IOException;
import java.sql.SQLException;
import java.util.Collection;
import java.util.List;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.ServletOutputStream;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import net.sf.jasperreports.engine.JRException;
import net.sf.jasperreports.engine.JasperRunManager;
import org.jfree.chart.ChartFactory;
import org.jfree.chart.ChartUtils;
import org.jfree.chart.JFreeChart;
import org.jfree.chart.plot.PlotOrientation;
import org.jfree.data.category.CategoryDataset;
import org.jfree.data.category.DefaultCategoryDataset;

/**
 *
 * @author edgar y lalo
 */
@WebServlet(name = "ProductoServlet", urlPatterns = {"/ProductoServlet"})
public class ProductoServlet extends HttpServlet {

    /**
     * Processes requests for both HTTP <code>GET</code> and <code>POST</code>
     * methods.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");

        HttpSession sesion = request.getSession();
        if (sesion.getAttribute("dtoUsuario") == null) {
            response.sendRedirect("iniciarSesion.jsp");
            return;
        }

        String accion = request.getParameter("accion");

        if (accion.equals("listaDeProductos")) {
            listaDeProductos(request, response);
        } else {
            if (accion.equals("nuevo")) {
                agregarProducto(request, response);
            } else {
                if (accion.equals("ver")) {
                    mostrarProducto(request, response);
                } else {
                    if (accion.equals("comprar")) {
                        comprarProducto(request, response);
                    } else {
                        if (accion.equals("guardarCompra")) {
                            almacenarCompra(request, response);
                        }

                    }
                }

            }
        }
    }

    // <editor-fold defaultstate="collapsed" desc="HttpServlet methods. Click on the + sign on the left to edit the code.">
    /**
     * Handles the HTTP <code>GET</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    /**
     * Handles the HTTP <code>POST</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    /**
     * Returns a short description of the servlet.
     *
     * @return a String containing servlet description
     */
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

    private void listaDeProductos(HttpServletRequest request, HttpServletResponse response) {
        ProductoDAO dao = new ProductoDAO();
        try {
            Collection lista = dao.readAll();
            request.setAttribute("listaDeProductos", lista);

            RequestDispatcher rd = request.getRequestDispatcher("/productos/listaProductos.jsp");
            rd.forward(request, response);
        } catch (SQLException | ServletException | IOException ex) {
            Logger.getLogger(ProductoServlet.class.getName()).log(Level.SEVERE, null, ex);
        }
    }

    private void agregarProducto(HttpServletRequest request, HttpServletResponse response) {
        RequestDispatcher vista = request.getRequestDispatcher("/productos/productosForm.jsp");
        try {
            vista.forward(request, response);
        } catch (ServletException | IOException ex) {
            Logger.getLogger(ProductoServlet.class.getName()).log(Level.SEVERE, null, ex);
        }
    }

    
    private void mostrarProducto(HttpServletRequest request, HttpServletResponse response) {
        ProductoDAO dao = new ProductoDAO();
        ProductoDTO dto = new ProductoDTO();
        dto.getEntidad().setIdProducto(Integer.parseInt(request.getParameter("id")));

        RequestDispatcher vista = request.getRequestDispatcher("/productos/datosProducto.jsp");

        try {
            dto = dao.read(dto);
            request.setAttribute("producto", dto);
            vista.forward(request, response);

        } catch (SQLException | ServletException | IOException ex) {
            Logger.getLogger(ProductoServlet.class.getName()).log(Level.SEVERE, null, ex);
        }
    }


    private void comprarProducto(HttpServletRequest request, HttpServletResponse response) {
        ProductoDAO dao = new ProductoDAO();
        ProductoDTO dto = new ProductoDTO();
        dto.getEntidad().setIdProducto(Integer.parseInt(request.getParameter("id")));

        RequestDispatcher vista = request.getRequestDispatcher("/productos/comprarForm.jsp");

        try {
            dto = dao.read(dto);
            request.setAttribute("producto", dto);
            vista.forward(request, response);

        } catch (SQLException | ServletException | IOException ex) {
            Logger.getLogger(ProductoServlet.class.getName()).log(Level.SEVERE, null, ex);
        }
    }

    private void almacenarCompra(HttpServletRequest request, HttpServletResponse response) {
        ProductoDAO dao = new ProductoDAO();
        ProductoDTO dto = new ProductoDTO();
        UsuarioDTO dtou = new UsuarioDTO();

        if (!request.getParameter("txtIdProducto").equals("")) {
            dto.getEntidad().setIdProducto(Integer.parseInt(request.getParameter("txtIdProducto")));
        }

        dto.getEntidad().setNombreProducto(request.getParameter("txtNombre"));
        dto.getEntidad().setDescripcionProducto(request.getParameter("txtDescripcion"));
        dto.getEntidad().setPrecio(Float.parseFloat(request.getParameter("txtPrecio")));
        dto.getEntidad().setExistencia(Integer.parseInt(request.getParameter("txtExistencia")));
        dto.getEntidad().setStockMinimo(Integer.parseInt(request.getParameter("txtStock")));
        dto.getEntidad().setClaveCategoria(Integer.parseInt(request.getParameter("txtClaveCategoria")));
        dtou.getEntidad().setEmail(request.getParameter("txtCorreo"));
        try {

            if (!request.getParameter("txtIdProducto").equals("")) {//CREAR
                //dao.Update(dto);
                EnviarMail email = new EnviarMail();
                String destinatario = dtou.getEntidad().getEmail();
                String asunto = "COD-CORP Compra recibida";
                String texto = "Su compra a sido recibida en tienda, recuerde que esto es solo informativo, debera pasar a tienda para poder completar el proceso"+", Nombre:"+dto.getEntidad().getNombreProducto()+", Descripcion:"+dto.getEntidad().getDescripcionProducto()+", Precio por unidad:"+dto.getEntidad().getPrecio();
                email.enviarCorreo(destinatario, asunto, texto);
                request.setAttribute("mensaje", "Compra enviada con exito.");
            } else {
                dao.create(dto);
                request.setAttribute("mensaje", "Producto almacenado con exito.");
            }

            listaDeProductos(request, response);
        } catch (SQLException ex) {
            Logger.getLogger(ProductoServlet.class.getName()).log(Level.SEVERE, null, ex);
        }

    }

}
