<%-- 
    Document   : publicacaomostrar
    Created on : 09/10/2019, 16:46:30
    Author     : aluno
--%>

<jsp:directive.page import="java.util.*" />
<jsp:directive.page import="entidades.*" />
<%@page import="controle.PublicacaoControle"%>
<%@taglib uri="http://displaytag.sf.net" prefix="display"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
    <head>
        <%
            List<Publicacao> lista = PublicacaoControle.listar();
            request.setAttribute("publicacoes", lista);

            Publicacao publicacao = lista.get(0);
            byte[] imagem = publicacao.getFoto();
            String encodedImage = Base64.getEncoder().encodeToString(imagem);
        %>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h1>Hello World!</h1>
        <display:table name="publicacoes">
            <display:column property="idp" title="ID" paramProperty="checkbox"/>
            <display:column property="conteudo" title="Conteudo"/>
            <display:column property="titulo" title="Titulo"/>
            <display:caption  />
            
            <display:setProperty name="basic.msg.empty_list" value="Sem Publicações" />
        </display:table>
    </body>
</html>
