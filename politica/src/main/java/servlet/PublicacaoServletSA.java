package servlet;

import entidades.*;
import controle.*;
import java.io.IOException;
import java.io.InputStream;
import java.util.Date;
import javax.servlet.ServletException;
import javax.servlet.annotation.MultipartConfig;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.Part;
import org.apache.commons.io.IOUtils;

@MultipartConfig

public class PublicacaoServletSA extends HttpServlet {

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        //Captura parametros da tela
        String idPublicacao = request.getParameter("pidp");
        System.out.println(idPublicacao);
        String conteudo = request.getParameter("conteudo");
        String titulo = request.getParameter("titulo");

        //Definição e conversão do id do usuário, usado como fk
        String idUser = request.getParameter("pid");
        Integer idUsuario = Integer.parseInt(idUser);

        Publicacao publicacao = new Publicacao();
        //Detecta se é usuario novo ou antigo
        if (!idPublicacao.isEmpty()) {
            Integer id = Integer.parseInt(idPublicacao);
            publicacao.setIdp(id);
        }
        //Insere informações no objeto
        Usuario usuario = new Usuario();
        usuario.setId(idUsuario);

        publicacao.setConteudo(conteudo);
        publicacao.setTitulo(titulo);
        publicacao.setUsuario(usuario);
                
        Date agora = new Date();
        publicacao.setHorario(agora);

        Part filePart = request.getPart("foto");
        if (filePart != null) {
            InputStream inputStream = filePart.getInputStream();
            publicacao.setFoto(IOUtils.toByteArray(inputStream));
            publicacao.setExtensao(filePart.getContentType());
        }

        //Chama de funcao para salvar ou atualizar publicacao
        PublicacaoControle.salvar(publicacao);

        //Redireciona pagina
        response.sendRedirect("home.jsp");
    }
}
