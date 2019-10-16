<%@page import="java.util.Iterator"%>
<%@page import="entidades.*"%>

<%@page import="java.util.Base64"%>
<%@page import="java.io.IOException"%>
<%@page import="java.io.ByteArrayInputStream"%>
<%@page import="java.io.BufferedOutputStream"%>
<%@page import="java.util.List"%>
<%@page import="controle.*"%>
<!DOCTYPE HTML>

<html>
    <head>
        <%
            Usuarioc usuario = (Usuarioc) session.getAttribute("UsuarioLogado");
            byte[] imagem = usuario.getFotoc();
            String usuarioFoto = Base64.getEncoder().encodeToString(imagem);
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
                        <a class="logo"><strong>Perfil</strong> </a>
                        <ul class="icons">
                            <li><a href="usuarioperfil.jsp" ><span class="label"><%=usuario.getNomec()%></span></a></li>
                            <li><a href="notificação.html" class="icon fa fa-bell-o"><span class="label">Notificações</span></a></li>
                            <li><a href="#" class="icon fa fa-ellipsis-v"><span class="label">Mais</span></a></li>
                            <li><a href="UsuarioServletLogout" class="label">Sair</a></li>
                        </ul>
                    </header>
                    <section>
                        <div style="height: 100%;maxwidth: 100%; background-color: #eff1f2; padding: 10px 10px 10px 10px; border-radius: 10px;">

                            <div id="left">
                                <img src="data:image/png;image/jpg;base64,<%=usuarioFoto%>" style="height: 250px; border-radius: 10px;" alt="Foto publicação"/>
                            </div>                            
                            <div style="position: relative">
                                Nome: <%=usuario.getNomec()%>
                                <a href="usuarioalterar.jsp?pid=<%=usuario.getId()%>" style="float: right; text-decoration: none;">Editar Perfil</a><br><br>

                                User: <%=usuario.getUsuarioc()%><br><br>

                                E-mail: <%=usuario.getEmailc()%><br><br>

                                Posição política: <%=usuario.getPosicaoc()%><br><br>

                                Bio: <%=usuario.getDescricaoc()%><br><br>

                                Seguidores: X   Seguindo: Y<br>
                            </div>
                        </div>
                    </section>
                    <h1>Publicações</h1>
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
                            <li><a href="home.jsp">Página inicial</a></li>
                            <li><a href="publicacaoinserir.jsp">Publicar</a></li>
                            <li><a href="publicacaomostrar.jsp">Publicações</a></li>
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
                            <li class="fa-envelope-o"><a href="#">lfilipesmaia@gmail.com</a></li>
                            <li class="fa-envelope-o"><a href="#">luisagomes@gmail.com</a></li>
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