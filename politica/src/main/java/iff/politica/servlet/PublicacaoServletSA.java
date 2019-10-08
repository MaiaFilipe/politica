package iff.politica.servlet;

import iff.politica.usuarios.Publicacao;
import iff.politica.usuarios.Usuarioc;
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
        String conteudo = request.getParameter("conteudo");
        String titulo = request.getParameter("titulo");
        
        Publicacao publicacao = new Publicacao();        
        //Detecta se é usuario novo ou antigo
        if(!idtext.isEmpty()){
            Integer id = Integer.parseInt(idtext);
            publicacao.setIdp(id);
        }
        //Insere informações no objeto
        publicacao.setConteudo(conteudo);
        publicacao.setTitulo(titulo);

        //Chama de funcao para salvar ou atualizar usuario
        UsuarioControle.salvarPublicacao(publicacao);
        
        //Redireciona pagina
        response.sendRedirect("home.jsp");
    }
}