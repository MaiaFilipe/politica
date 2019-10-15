<%-- 
    Document   : publicacaoinserir
    Created on : 09/10/2019, 11:19:21
    Author     : aluno
--%>

<%@page import="entidades.Usuarioc"%>
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
                        <a href="index.html" class="logo"><strong>Publicação completa</strong></a>
                        <%
                                Usuarioc usuario = (Usuarioc) session.getAttribute("UsuarioLogado");
                            %>
                        <ul class="icons">
                            <li><a href="usuarioperfil.jsp" ><span class="label"><%=usuario.getNomec()%></span></a></li>
                            <li><a href="#" class="icon fa fa-bell-o"><span class="label">Notificações</span></a></li>
                            <li><a href="#" class="icon fa fa-ellipsis-v"><span class="label">Mais</span></a></li>
                            <li><a href="home.html" class="icon fa fa-ellipsis-v">Sair</a></li>
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
                            <li><a href="home.jsp">Homepage</a></li>
                            <li><a href="publicacaomostrar.jsp">Publicações</a></li>
                            <li><a href="generic.html">Generic</a></li>
                            <li><a href="elements.html">Elements</a></li>
                            <li>
                                <span class="opener">Submenu</span>
                                <ul>
                                    <li><a href="#">Lorem Dolor</a></li>
                                    <li><a href="#">Ipsum Adipiscing</a></li>
                                    <li><a href="#">Tempus Magna</a></li>
                                    <li><a href="#">Feugiat Veroeros</a></li>
                                </ul>
                            </li>
                            <li><a href="#">Etiam Dolore</a></li>
                            <li><a href="#">Adipiscing</a></li>
                            <li>
                                <span class="opener">Another Submenu</span>
                                <ul>
                                    <li><a href="#">Lorem Dolor</a></li>
                                    <li><a href="#">Ipsum Adipiscing</a></li>
                                    <li><a href="#">Tempus Magna</a></li>
                                    <li><a href="#">Feugiat Veroeros</a></li>
                                </ul>
                            </li>
                            <li><a href="#">Maximus Erat</a></li>
                            <li><a href="#">Sapien Mauris</a></li>
                            <li><a href="#">Amet Lacinia</a></li>
                        </ul>
                    </nav>
                    <section>
                        <header class="major">
                            <h2>Ante interdum</h2>
                        </header>
                        <div class="mini-posts">
                            <article>
                                <a href="#" class="image"><img src="images/pic07.jpg" alt="" /></a>
                                <p>Aenean ornare velit lacus, ac varius enim lorem ullamcorper dolore aliquam.</p>
                            </article>
                            <article>
                                <a href="#" class="image"><img src="images/pic08.jpg" alt="" /></a>
                                <p>Aenean ornare velit lacus, ac varius enim lorem ullamcorper dolore aliquam.</p>
                            </article>
                            <article>
                                <a href="#" class="image"><img src="images/pic09.jpg" alt="" /></a>
                                <p>Aenean ornare velit lacus, ac varius enim lorem ullamcorper dolore aliquam.</p>
                            </article>
                        </div>
                        <ul class="actions">
                            <li><a href="#" class="button">More</a></li>
                        </ul>
                    </section>
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
                    <footer id="footer">
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