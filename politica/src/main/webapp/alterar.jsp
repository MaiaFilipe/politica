<%@page import="iff.politica.servlet.UsuarioControle"%>
<%@page import="iff.politica.servlet.UsuarioServletSA"%>
<%@page import="org.hibernate.Session"%>
<%@page import="org.hibernate.Transaction"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<jsp:directive.page import="iff.politica.usuarios.*" />
<jsp:directive.page import="iff.politica.utilidades.*" />
<jsp:directive.page import="iff.politica.servlet.*" />

<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Crud</title>
    </head>
    <body>
        <h1>Leitura e alteração!</h1>
        <%
        //Criar variaveis
        Usuarioc usuario = new Usuarioc();
        String nome = "";
        String senha = "";
        String cpf = "";
        //Captura id (se alteração)
        String idUsuario = request.getParameter("pid");
        
        //Localiza usuario (se alteração)
        if(!idUsuario.isEmpty()){
            usuario = UsuarioControle.buscar(Integer.parseInt(idUsuario));
            nome = usuario.getNomec();
            senha = usuario.getSenhac();
        }
        else{
            idUsuario = "";
        }
        
        %>
        <form method="POST" action="UsuarioServletSA">
            <div hidden>
                ID<input type="text" name="pid" value="<%=idUsuario%>">
            </div>
            Nome<input type="text" name="nome" value="<%=nome%>">
            Senha<input type="password" name="senha" value="<%=senha%>">
            Cpf<input type="password" name="senha" value="<%=cpf%>">
            <input type="submit">
        </form>
    </body>
</html>