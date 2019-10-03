<%@page import="iff.politica.usuarios.Usuarioc"%>
<!DOCTYPE HTML>

<html>
    <head>
        <%
            Usuarioc usuario = (Usuarioc) session.getAttribute("UsuarioLogado");
        %>
        <title><%=usuario.getUsuarioc()%></title>
        <meta charset="utf-8" />
        <meta name="viewport" content="width=device-width, initial-scale=1, user-scalable=no" />
        <link rel="stylesheet" href="assets/css/main.css" />
    </head>
    <body class="is-preload">
        <div id="wrapper">
            <div id="main">
                <div class="inner">
                    <header id="header">
                        <a href="cadastro_comum.html" class="logo"><strong>Perfil</strong> </a>
                        <ul class="icons">
                            <li><a href="perfil.jsp" ><span class="label"><%=usuario.getNomec()%></span></a></li>
                            <li><a href="login.html" class="icon fa fa-user-circle-o"><span class="label">Perfil</span></a></li>
                            <li><a href="Notificação.html" class="icon fa fa-bell-o"><span class="label">Notificações</span></a></li>
                            <li><a href="#" class="icon fa fa-ellipsis-v"><span class="label">Mais</span></a></li>
                        </ul>
                    </header>
                    <section>
                        <div id="block" style="padding-left: 20px;">
                            
                            <div id="left">
                                <img src="pp.png" width="90%" style="border-radius: 10000px;">
                            </div>                            

                            Nome: <%=usuario.getNomec()%>
                            <a href="alterar.jsp?pid=<%=usuario.getId()%>" style="float: right; text-decoration: none;">Editar Perfil</a><br><br>

                            User: <%=usuario.getUsuarioc()%><br><br>

                            E-mail: <%=usuario.getEmailc()%><br><br>

                            Posição política: <%=usuario.getPosicaoc()%><br><br>

                            Bio: <%=usuario.getDescricaoc()%><br><br>

                            Seguidores: X<b>Seguindo:</b>&ensp; Y <br>

                        </div>
                    </section>
                    <h2>Publicações</h2>
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
                            <li><a href="principal.jsp">Página inicial</a></li>
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

                    <!-- Section -->


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
                    <footer id="footer">
                        <p class="copyright"> <a href="https://unsplash.com">Unsplash</a>. Design: <a href="#"></a>.</p>
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