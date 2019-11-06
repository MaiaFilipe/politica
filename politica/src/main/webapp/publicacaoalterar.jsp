<%-- 
    Document   : publicacaoinserir
    Created on : 09/10/2019, 11:19:21
    Author     : aluno
--%>

<%@page import="entidades.*"%>
<%@page import="controle.*"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE HTML>

<html>
    <head>
        <title>Publicação</title>
        <meta charset="utf-8" />
        <meta name="viewport" content="width=device-width, initial-scale=1, user-scalable=no" />
        <link rel="stylesheet" href="assets/css/main.css" />
    </head>
    <body class="is-preload">
        <div id="wrapper">
            <div id="main">
                <div class="inner">
                    <header id="header">
                        <a  class="logo"><strong>Publicação completa</strong></a>
                        <%
                            Usuario usuario = (Usuario) session.getAttribute("UsuarioLogado");
                            Publicacao publicacao = new Publicacao();
                            String conteudo = "";
                            String titulo = "";

                            //Captura id (se alteração)
                            String idPublicacao = request.getParameter("pidp");

                            //Localiza usuario (se alteração)
                            if (!idPublicacao.isEmpty()) {
                                publicacao = PublicacaoControle.buscar(Integer.parseInt(idPublicacao));
                                conteudo = publicacao.getConteudo();
                                titulo = publicacao.getTitulo();

                            } else {
                                idPublicacao = "";
                            }
                        %>
                        <ul class="icons">
                            <li><a href="usuarioperfil.jsp" ><span class="label"><%=usuario.getNome()%></span></a></li>
                            <li><a href="#" class="icon fa fa-bell-o"><span class="label">Notificações</span></a></li>
                            <li><a href="#" class="icon fa fa-ellipsis-v"><span class="label">Mais</span></a></li>
                            <li><a href="UsuarioServletLogout" class="icon fa fa-ellipsis-v">Sair</a></li>
                        </ul>
                    </header>
                    <section>
                        <section>
                            <form method="POST" action="PublicacaoServletSA" enctype="multipart/form-data">
                                <div hidden>
                                    ID Publicação<input type="text" name="pidp" value="<%=idPublicacao%>">
                                </div>
                                <div hidden>
                                    ID Usuário <input type="text" name="pid" value="<%=usuario.getId()%>">
                                </div>
                                <h2> Título: </h2>
                                <input type="text" name="titulo" value="<%=titulo%>">
                                <br><br>

                                <div class="left">
                                    <h2>Escolher imagem:</h2>
                                    <input type="file" name="foto" accept="image/png, image/jpeg" value="">
                                </div>

                                <br><br>
                                <div class="left">
                                    <h2> Texto: </h2>
                                    <input type="text" name="conteudo" value="<%=conteudo%>"><br><br>
                                </div>
                                <input type="submit" value="Enviar">
                                <header id="header">
                                </header>
                            </form>
                        </section>
                </div>
            </div>
            <%@include file="menulateral.jspf"%>
            <script src="assets/js/jquery.min.js"></script>
            <script src="assets/js/browser.min.js"></script>
            <script src="assets/js/breakpoints.min.js"></script>
            <script src="assets/js/util.js"></script>
            <script src="assets/js/main.js"></script>
    </body>
</html>