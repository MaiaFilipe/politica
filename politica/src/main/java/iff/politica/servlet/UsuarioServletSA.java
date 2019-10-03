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
        String user = request.getParameter("usuario");
        String senha = request.getParameter("senha");
        String email = request.getParameter("email");
        String posicao = request.getParameter("posicao");
        String descricao = request.getParameter("descricao");
        String nascimento = request.getParameter("nascimento");
        String estado = request.getParameter("estado");
        
        String cpfXaBlau = request.getParameter("cpf");
        Long cpf = Long.parseLong(cpfXaBlau);
        
        String telefone = request.getParameter("cell");
        Long cell = Long.parseLong(telefone);

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
        usuario.setUsuarioc(user);
        usuario.setPosicaoc(posicao);
        usuario.setDescricaoc(descricao);
        usuario.setNascimentoc(nascimento);
        usuario.setEstadoc(estado);

        //Chama de funcao para salvar ou atualizar usuario
        UsuarioControle.salvar(usuario);
        
        //Redireciona pagina
        response.sendRedirect("index.html");
    }
}