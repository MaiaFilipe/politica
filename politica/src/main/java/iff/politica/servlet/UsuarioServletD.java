package iff.politica.servlet;

import iff.politica.usuarios.Usuarioc;
import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class UsuarioServletD extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        //Captura id da tela
        String idtext = request.getParameter("pid");
        
        //Cria instancia do usuario com id informado
        Usuarioc usuario = new Usuarioc();
        usuario.setId(Integer.parseInt(idtext));
        
        //Chama de funcao para apagar usuario
        UsuarioControle.deletar(usuario);
        
        //Redireciona pagina
        response.sendRedirect("index.html");
    }
}