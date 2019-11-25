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
    	<!-- INICIO DA MODIFICAÇÃO -->
    	<meta charset="utf-8" />
        <meta name="viewport" content="width=device-width, initial-scale=1, user-scalable=no" />
    	<link rel="stylesheet" type="text/css" href="assets/css/publicacaomostrar.css">

    	<link rel="stylesheet" href="assets/css/main.css" />
    	<!-- FIM DA MODIFICAÇÃO -->
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
        <title>Postagens</title>
    </head>
    <body class="is-preload">
    	<!-- Wrapper -->
        <div id="wrapper">
            <!-- Main -->
            <div id="main">
                <div class="inner">
                    <!-- Header -->
                    <header id="header">
                        <a href="home.html" class="logo"><strong>Homepage</strong> </a>
                        <ul class="icons">
                            <li><a href="login.html" class="icon fa fa-user-circle-o"><span class="label">Perfil</span></a></li>
                            <li><a href="Notificação.html" class="icon fa fa-bell-o"><span class="label">Notificações</span></a></li>
                            <li><a href="#" class="icon fa fa-ellipsis-v"><span class="label">Mais</span></a></li>
                        </ul>
                    </header>

                    <!-- Banner -->
                    <section>
                        <div class="content" style="background-color: rgba(210, 215, 217, 0.75);">
                            <!-- INICIO DA MODIFICAÇÃO -->
                            <div class="Postagem">
                                <h1><%=publicacao.getTitulo()%></h1>
                                <img src="data:image/png;image/jpg;base64,<%=publicacaoFoto%>" alt="Foto publicação"/>
                                <h4><%=publicacao.getConteudo()%></h4>
                                <h5><%=publicacao.getHorario()%></h5>
                                <h3><%=publicacao.getUsuario().getNome()%></h3>
                                <%}%>
                            </div>
                            <!-- FIM DA MODIFICAÇÃO -->
                        </div>
                    </section>
                </div>
            </div>

            <!-- Sidebar -->
            <div id="sidebar">

                <div class="inner">


                    <!-- Search -->
                    <section id="search" class="alt">
                        <form method="post" action="#">
                            <input type="text" name="query" id="query" placeholder="Pesquisa" />
                        </form>
                    </section>

                    <!-- Menu -->
                    <nav id="menu">
                        <header class="major">
                            <h2>Menu</h2>
                        </header>
                        <ul>
                            <li><a href="home.html">Página Inicial</a></li>
                            <li><a href="generic.html">Generic</a></li>
                            <li>
                                <span class="opener">Submenu</span>
                                <ul>
                                    <li><a href="#">Lorem Dolor</a></li>
                                    <li><a href="#">Ipsum Adipiscing</a></li>
                                    <li><a href="#">Tempus Magna</a></li>
                                    <li><a href="#">Feugiat Veroeros</a></li>
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

        <!-- Scripts -->
        <script src="assets/js/jquery.min.js"></script>
        <script src="assets/js/browser.min.js"></script>
        <script src="assets/js/breakpoints.min.js"></script>
        <script src="assets/js/util.js"></script>
        <script src="assets/js/main.js"></script>
        <!-- End Scripts -->
    </body>
</html>