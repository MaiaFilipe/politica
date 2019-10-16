package servlet;

import controle.UsuarioControle;
import entidades.Usuarioc;
import java.io.IOException;
import java.io.InputStream;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.Part;
import org.apache.commons.io.IOUtils;

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
        Part filePart = request.getPart("foto");
        
        String cpfXaBlau = request.getParameter("cpf");
        cpfXaBlau = cpfXaBlau.replaceAll("-", ""); cpfXaBlau = cpfXaBlau.replaceAll("\\.", "");
        Double cpf = Double.parseDouble(cpfXaBlau);
        
        String cell = request.getParameter("telefone");
        Double telefone = Double.parseDouble(cell);
         
        //Cria instancia do usuario
        Usuarioc usuario = new Usuarioc();
        //Detecta se é usuario novo ou antigo
        if (!idtext.isEmpty()) {
            Integer id = Integer.parseInt(idtext);
            usuario.setId(id);
        }
        if (filePart != null) {
            InputStream inputStream = filePart.getInputStream();
            usuario.setFotoc(IOUtils.toByteArray(inputStream));
            usuario.setExtensaoc(filePart.getContentType());
        }
        //Insere informações no objeto
        usuario.setNomec(nome);
        usuario.setSenhac(senha);
        usuario.setEmailc(email);
        usuario.setCpfc(cpf);
        usuario.setCellc(telefone);
        usuario.setUsuarioc(user);
        usuario.setPosicaoc(posicao);
        usuario.setDescricaoc(descricao);
        usuario.setNascimentoc(nascimento);
        usuario.setEstadoc(estado);

        //Chama de funcao para salvar ou atualizar usuario
        UsuarioControle.salvar(usuario);

        //Redireciona pagina
        response.sendRedirect("home.html");
    }
}
