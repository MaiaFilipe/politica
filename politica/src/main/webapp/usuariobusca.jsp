<%-- 
    Document   : usuariobusca
    Created on : 19/11/2019, 12:57:14
    Author     : aluno
--%>

<%@page import="java.util.Iterator"%>
<%@page import="java.util.List"%>
<%@page import="java.util.Base64"%>
<%@page import="entidades.Usuario"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Usuários</title>
    </head>
    <body>
        <%
            Usuario usuarioLogado = (Usuario) session.getAttribute("UsuarioLogado");
            byte[] fotoPerfil = usuarioLogado.getFoto();
            String perfilFoto = Base64.getEncoder().encodeToString(fotoPerfil);
            List lista = (List) session.getAttribute("buscas");
            System.out.println(lista);
        %>

        <%
            for (Iterator it = lista.iterator(); it.hasNext();) {
                Usuario usuario = (Usuario) it.next();
                String nick = usuario.getUsuario();
                System.out.println(nick);
                byte[] fotoPerfilBusca = usuario.getFoto();
                String perfilFotoBusca = Base64.getEncoder().encodeToString(fotoPerfilBusca);
                HttpSession httpSession = request.getSession();
                httpSession.setAttribute("buscado", usuario);
                System.out.println(nick);
        %>
        <img src="data:image/png;base64,<%=perfilFotoBusca%>" class="perfil" height='100'>
        <span class="nick">
            <%=nick%>
        </span>
        <%
            }
        %>
    </body>
</html>
