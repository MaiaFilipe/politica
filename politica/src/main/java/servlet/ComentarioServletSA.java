/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package servlet;

import controle.ComentarioControle;
import entidades.*;
import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author aluno
 */
public class ComentarioServletSA extends HttpServlet {

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
        try (PrintWriter out = response.getWriter()) {
            /* TODO output your page here. You may use following sample code. */
            out.println("<!DOCTYPE html>");
            out.println("<html>");
            out.println("<head>");
            out.println("<title>Servlet ComentarioServletSA</title>");
            out.println("</head>");
            out.println("<body>");
            out.println("<h1>Servlet ComentarioServletSA at " + request.getContextPath() + "</h1>");
            out.println("</body>");
            out.println("</html>");
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
        
        String idtext = request.getParameter("pid");
        String conteudo = request.getParameter("comentario");
        String idComentador = request.getParameter("comentador");
        String idPublicacao = request.getParameter("publicacao");

        Comentario comentario = new Comentario();
        Publicacao publicacao = new Publicacao();
        Usuario usuario = new Usuario();

        if (!idtext.isEmpty()) {
            Integer id = Integer.parseInt(idtext);
            comentario.setId(id);
        }

        publicacao.setIdp(Integer.parseInt(idPublicacao));
        usuario.setId(Integer.parseInt(idComentador));
        
        comentario.setComentario(conteudo);
        comentario.setComentador(usuario);
        comentario.setPublicacao(publicacao);
        
        ComentarioControle.salvar(comentario);
        response.sendRedirect("publicacaocompleta.jsp?pid=" + idPublicacao);
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

}
