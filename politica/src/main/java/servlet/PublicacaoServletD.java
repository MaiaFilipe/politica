package servlet;

import controle.*;
import entidades.*;
import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class PublicacaoServletD extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        //Captura id da tela
        String idtext = request.getParameter("pid");
        
        //Cria instancia do usuario com id informado
        Publicacao publicacao = new Publicacao();
        publicacao.setIdp(Integer.parseInt(idtext));
        
        //Chama de funcao para apagar usuario
        PublicacaoControle.deletar(publicacao);
        
        //Redireciona pagina
        response.sendRedirect("usuarioperfil.jsp");
    }
}