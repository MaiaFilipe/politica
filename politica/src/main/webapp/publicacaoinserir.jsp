<%-- 
    Document   : publicacaoinserir
    Created on : 09/10/2019, 11:19:21
    Author     : aluno
--%>

<%@page import="entidades.*"%>
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
                                    ID<input type="text" name="pidp" value="">
                                </div>
                                <div hidden>
                                    ID Usuário <input type="text" name="pid" value="<%=usuario.getId()%>">
                                </div>
                                <div hidden>
                                    ID Usuário <input type="text" name="autor" value="<%=usuario.getNome()%>">
                                </div>
                                <h2> Título: </h2>
                                <input type="text" name="titulo">
                                <br><br>

                                <div class="left">
                                    <h2>Escolher imagem:</h2>
                                    <input type="file" id="" name="foto" accept="image/png, image/jpeg">
                                </div>

                                <br><br>
                                <div class="left">
                                    <h2> Texto: </h2>
                                    <input type="text" name="conteudo"><br><br>
                                </div>
                                <input type="submit" value="Enviar">
                                <header id="header">
                                </header>
                            </form>
                        </section>
                </div>
            </div>
            <div id="sidebar">
                <div class="inner">
                    <section id="search" class="alt">
                        <form method="post" action="#">
                            <input type="text" name="query" id="query" placeholder="Search" />
                        </form>
                    </section>
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
        <script src="assets/js/jquery.min.js"></script>
        <script src="assets/js/browser.min.js"></script>
        <script src="assets/js/breakpoints.min.js"></script>
        <script src="assets/js/util.js"></script>
        <script src="assets/js/main.js"></script>
    </body>
</html>