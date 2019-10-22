<%-- 
    Document   : publicacaomostrar
    Created on : 09/10/2019, 16:46:30
    Author     : aluno
--%>

<jsp:directive.page import="java.util.*" />
<jsp:directive.page import="entidades.*" />


<%@page import="controle.PublicacaoControle"%>
<%@page import="entidades.*"%>
<%@taglib uri="http://displaytag.sf.net" prefix="display"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
    <head>

        <%
            
            List<Publicacao> lista = PublicacaoControle.listar();
            request.setAttribute("publicacoes", lista);

            for (Iterator it = lista.iterator(); it.hasNext();) {
                Publicacao publicacao = (Publicacao) it.next();
                String codigo = publicacao.getIdp().toString();
                byte[] imagem = publicacao.getFoto();
                String publicacaoFoto = Base64.getEncoder().encodeToString(imagem);
        %>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h1><%=publicacao.getTitulo()%></h1>
        <img src="data:image/png;image/jpg;base64,<%=publicacaoFoto%>" style="max-width: 500px; max-height: 500px;" alt="Foto publicação"/>
        <h3><%=publicacao.getConteudo()%></h3>
        <%=publicacao.getHorario()%><br><br>
        <%=publicacao.getAutor()%>
        <%}%>
    </body>
</html>