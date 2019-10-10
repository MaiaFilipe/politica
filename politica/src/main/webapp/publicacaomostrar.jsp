<%-- 
    Document   : publicacaomostrar
    Created on : 09/10/2019, 16:46:30
    Author     : aluno
--%>

<%@page import="java.util.Base64"%>
<%@page import="java.io.IOException"%>
<%@page import="java.io.ByteArrayInputStream"%>
<%@page import="java.io.BufferedOutputStream"%>
<%@page import="entidades.Publicacao"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <%
            Publicacao publicacao = new Publicacao();

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
            <display:setProperty name="basic.msg.empty_list" value="Sem Publicações" />
        </display:table>
    </body>
</html>
