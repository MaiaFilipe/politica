/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package servlet;

import controle.ComentarioControle;
import entidades.Comentario;
import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class ComentarioServletD extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        //Captura id da tela
        String idtext = request.getParameter("pid");
        
        //Cria instancia do usuario com id informado
        Comentario comentario = new Comentario();
        comentario.setId(Integer.parseInt(idtext));
        
        //Chama de funcao para apagar usuario
        ComentarioControle.deletar(comentario);
        
        //Redireciona pagina
        response.sendRedirect("home.jsp");
    }
}