package servlet;

import entidades.*;
import controle.*;
import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class PublicacaoServletSA extends HttpServlet {
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        //Captura parametros da tela
        String idtext = request.getParameter("pidp");
        
        String idUser = request.getParameter("pid");
        Integer idUsuario = Integer.parseInt(idUser);
        
        String conteudo = request.getParameter("conteudo");
        String titulo = request.getParameter("titulo");
        
        Publicacao publicacao = new Publicacao();        
        //Detecta se é usuario novo ou antigo
        if(idtext == null){
            Integer id = Integer.parseInt(idtext);
            publicacao.setIdp(id);
        }
        //Insere informações no objeto
        Usuarioc usuario = new Usuarioc();
        usuario.setId(idUsuario);
        
        publicacao.setConteudo(conteudo);
        publicacao.setTitulo(titulo);
        publicacao.setIdUsuario(usuario);

        //Chama de funcao para salvar ou atualizar publicacao
        PublicacaoControle.salvar(publicacao);
        
        //Redireciona pagina
        response.sendRedirect("home.jsp");
    }
}