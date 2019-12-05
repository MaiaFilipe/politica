/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package servlet;

import entidades.Avaliacao;
import entidades.Publicacao;
import entidades.Usuario;
import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import org.hibernate.Session;
import org.hibernate.Transaction;
import util.HibernateUtil;

/**
 *
 * @author aluno
 */
public class curtida extends HttpServlet {

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
        String like = request.getParameter("valor");
        
        int num =  Integer.parseInt(like);
       

        String idtext = request.getParameter("pid");
        String idAvaliador = request.getParameter("avaliador");
        String idPublicacao = request.getParameter("publicacao");
        System.out.println("valor: "+num);
        System.out.println("pid:  "+idtext);
        System.out.println("avaliador:  "+idAvaliador);
        System.out.println("publicacao:  "+idPublicacao);

       
        
        Avaliacao avaliacao = new Avaliacao();
        Publicacao publicacao = new Publicacao();
        Usuario usuario = new Usuario();

        if (idtext != null && !idtext.isEmpty()) {
            Integer id = Integer.parseInt(idtext);
            avaliacao.setId(id);
        }

        publicacao.setIdp(Integer.parseInt(idPublicacao));
        usuario.setId(Integer.parseInt(idAvaliador));

        Session sessionRecheio;
        sessionRecheio = HibernateUtil.getSession();
        Avaliacao avBD = (Avaliacao) sessionRecheio.createQuery("from Avaliacao where avaliador=? and publicacao=?").setEntity(0, usuario).setEntity(1, publicacao).uniqueResult();
        
        if (avBD != null) {
            avaliacao = avBD;
        }
        avaliacao.setAvaliador(usuario);
        avaliacao.setPublicacao(publicacao);
        avaliacao.setValor(num);

        Transaction tr = sessionRecheio.beginTransaction();
        sessionRecheio.saveOrUpdate(avaliacao);
        tr.commit();
        
        response.sendRedirect("publicacaocompleta.jsp?pid=" + idPublicacao);

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

}
