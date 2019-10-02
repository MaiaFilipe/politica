package iff.politica.servlet;

import iff.politica.usuarios.Usuarioc;
import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class UsuarioServletSA extends HttpServlet {
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        //Captura parametros da tela
        String idtext = request.getParameter("pid");
        String nome = request.getParameter("nome");
        String senha = request.getParameter("senha");
        String email = request.getParameter("email");
        
        String cpfXaBlau = request.getParameter("cpf");
        cpfXaBlau = cpfXaBlau.replaceAll("-", ""); cpfXaBlau = cpfXaBlau.replaceAll("\\.", "");
        Integer cpf = Integer.parseInt(cpfXaBlau);
        
        Integer cell = Integer.parseInt("cell");

        //Cria instancia do usuario
        Usuarioc usuario = new Usuarioc();        
        //Detecta se é usuario novo ou antigo
        if(!idtext.isEmpty()){
            Integer id = Integer.parseInt(idtext);
            usuario.setId(id);
        }
        //Insere informações no objeto
        usuario.setNomec(nome);
        usuario.setSenhac(senha);
        usuario.setEmailc(email);
        usuario.setCpfc(cpf);
        usuario.setCellc(cell);

        //Chama de funcao para salvar ou atualizar usuario
        UsuarioControle.salvar(usuario);
        
        //Redireciona pagina
        response.sendRedirect("index.html");
    }
}