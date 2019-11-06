<%-- 
    Document   : publicacaocompleta
    Created on : 23/10/2019, 16:54:38
    Author     : aluno
--%>

<%@page import="java.util.Base64"%>
<%@page import="servlet.*"%>
<%@page import="org.hibernate.Session"%>
<%@page import="org.hibernate.Transaction"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<jsp:directive.page import="entidades.*" />
<jsp:directive.page import="controle.*" />
<jsp:directive.page import="servlet.*" />
<!DOCTYPE HTML>
<!--
        Editorial by HTML5 UP
        html5up.net | @ajlkn
        Free for personal and commercial use under the CCA 3.0 license (html5up.net/license)
-->
<%

    Usuario usuario = (Usuario) session.getAttribute("UsuarioLogado");
    Publicacao publicacao = new Publicacao();

    String ID = request.getParameter("pid");
    publicacao = PublicacaoControle.buscar(Integer.parseInt(ID));
    byte[] imagem = publicacao.getFoto();
    String publicacaoFoto = Base64.getEncoder().encodeToString(imagem);

%>
<html>
    <head>
        <title>Publicação</title>
        <meta charset="utf-8" />
        <meta name="viewport" content="width=device-width, initial-scale=1, user-scalable=no" />
        <link rel="stylesheet" href="assets/css/main.css" />
    </head>
    <body class="is-preload">

        <!-- Wrapper -->
        <div id="wrapper">

            <!-- Main -->
            <div id="main">
                <div class="inner">

                    <!-- Header -->
                    <header id="header">
                        <a class="logo"><strong>Publicação completa</strong></a>
                        <ul class="icons">

                            <li><a href="usuarioperfil.jsp" ><span class="label"><%=usuario.getNome()%></span></a></li>
                            <li><a href="usuarioperfil.jsp" class="icon fa fa-user-circle-o"><span class="label">Perfil</span></a></li>
                            <li><a href="#" class="icon fa fa-bell-o"><span class="label">Notificações</span></a></li>
                            <li><a href="#" class="icon fa fa-ellipsis-v"><span class="label">Mais</span></a></li>
                        </ul>
                    </header>

                    <!-- Content -->
                    <section>
                        <header class="main">
                            <h1><%=publicacao.getTitulo()%></h1>
                            <%
                                Usuario publicador = publicacao.getUsuario();

                                System.out.println(publicador.getId());
                                System.out.println(usuario.getId());

                                if (publicador.getId() + 1 == usuario.getId() + 1) {
                                    System.out.println("É igual brow");
                            %>
                            <a href="publicacaoalterar.jsp?pidp=<%=publicacao.getIdp()%>" type="text" name="pidp" value="<%=publicacao.getIdp()%>">Alterar publicação</a>
                            <%
                                } else {
                                    System.out.println("É difirente brow");
                                }
                            %>

                        </header>
                        <artilcle>
                            <span class="image main"><img rel="icon" src="data:image/png;image/jpg;base64,<%=publicacaoFoto%>" type="image/icon type"></span>
                        </artilcle>
                        <p> <%=publicacao.getConteudo()%> </p>

                        <h3>Autor da publicação:</h3><h4><%=publicacao.getUsuario().getNome()%></h4>
                        <h3>Data e horário da publicação:</h3><h4><%=publicacao.getHorario()%></h4>

                        <hr class="major" />

                        <header id="header">
                            <a href="index.html" class="logo"><strong></strong> </a>
                            <ul class="icons">
                                <li><a href="#" class="icon  fa fa-thumbs-o-up"><span class="label">Curtir</span></a></li>
                                <li><a href="#" class="icon  fa fa-thumbs-o-down"><span class="label">Descurtir</span></a></li>
                                <li><a href="#" class="icon  fa fa-flag-o"><span class="label">Denunciar</span></a></li>
                                <li><a href="#" class="icon fa fa-comments-o"><span class="label">Comentar</span></a></li>
                                <li><a href="#" class="icon fa fa-share"><span class="label">Compatilhar</span></a></li>
                            </ul>
                        </header>
                    </section>

                </div>
            </div>

            <!-- Sidebar -->
            <div id="sidebar">
                <div class="inner">

                    <!-- Search -->
                    <section id="search" class="alt">
                        <form method="post" action="#">
                            <input type="text" name="query" id="query" placeholder="Search" />
                        </form>
                    </section>

                    <!-- Menu -->
                    <nav id="menu">
                        <header class="major">
                            <h2>Menu</h2>
                        </header>
                        <ul>
                            <li><a href="home.jsp">Página Inicial</a></li>
                            <li>
                                <span class="opener">Postagens</span>
                                <ul>
                                    <li><a href="publicacaoinserir.jsp">Publicar</a></li>
                                    <li><a href="publicacaomostrar.jsp">Publicações</a></li>
                                </ul>
                            </li>
                        </ul>
                    </nav>

                    <!-- Section -->
                    <section>
                        <header class="major">
                            <h2>Fique por dentro:</h2>
                        </header>
                        <div class="mini-posts">
                            <article>
                                <a href="https://g1.globo.com/politica/noticia/2018/12/09/ministro-do-supremo-tribunal-federal-nega-liberdade-a-pezao.ghtml"target="_blank" class="image"><img src="Imagens/pezao.jpg" alt=""  /></a>
                                <p>O ministro do STF negou o pedido de habeas corpus apresentado pela defesa de Pezão.</p>
                            </article>
                            <article>
                                <a href="https://g1.globo.com/politica/blog/valdo-cruz/noticia/2018/12/07/paulo-guedes-pode-ter-tucano-e-assessor-da-casa-civil-em-sua-equipe-no-ministerio-da-economia.ghtml" target="_blank" class="image"><img src="Imagens/paulo_guedes.jpg" alt="" /></a>
                                <p>Paulo Guedes pode ter tucano e assessor da Casa Civil em sua equipe no Ministério da Economia.</p>
                            </article>
                            <article>
                                <a href="https://g1.globo.com/politica/noticia/2018/12/06/temer-afirma-que-tentaram-desgracar-a-vida-dele-e-diz-nao-se-preocupar-com-investigacoes.ghtml" target="_blank"  class="image"><img src="Imagens/temer.jpg" alt="" /></a>
                                <p>Temer afirma que tentaram 'desgraçar' a vida dele e diz não se preocupar com investigações.</p>
                            </article>
                        </div>

                    </section>

                    <!-- Section -->
                    <section>
                        <header class="major">
                            <h2>Fale conosco!</h2>
                        </header>
                        <p>Em caso de surgimento de dúvidas, críticas ou interesse na nossa proposta aqui apresentada, entre em contato.</p>
                        <ul class="contact">
                            <li class="fa-envelope-o"><a href="#">information@untitled.tld</a></li>
                            <li class="fa-phone">(+5522)00000-0000</li>
                            <li class="fa-home">s/n Quissamã #0000<br />
                                RJ, Brasil</li>
                        </ul>
                    </section>

                    <!-- Footer -->
                    <footer id="footer">
                        <p class="copyright">&copy; Untitled. All rights reserved. Demo Images: <a href="https://unsplash.com">Unsplash</a>. Design: <a href="https://html5up.net">HTML5 UP</a>.</p>
                    </footer>

                </div>
            </div>

        </div>

        <!-- Scripts -->
        <script src="assets/js/jquery.min.js"></script>
        <script src="assets/js/browser.min.js"></script>
        <script src="assets/js/breakpoints.min.js"></script>
        <script src="assets/js/util.js"></script>
        <script src="assets/js/main.js"></script>

    </body>
</html>