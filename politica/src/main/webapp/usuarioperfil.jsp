<%@page import="util.HibernateUtil"%>
<%@page import="org.hibernate.Session"%>
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
            Usuario usuario = (Usuario) session.getAttribute("UsuarioLogado");
            byte[] imagem = usuario.getFoto();
            String usuarioFoto = Base64.getEncoder().encodeToString(imagem);
        %>

        <title><%=usuario.getUsuario()%></title>
        <meta charset="utf-8" />
        <meta name="viewport" content="width=device-width, initial-scale=1, user-scalable=no" />
        <link rel="stylesheet" href="assets/css/main.css" />
    </head>
    <body class="is-preload">
        <div id="wrapper">
            <div id="main">
                <div class="inner">
                    <header id="header">
                        <a class="logo" href="home.jsp"><strong>Home</strong> </a>
                        <ul class="icons">
                            <li><a href="usuarioperfil.jsp" ><span class="label"><%=usuario.getNome()%></span></a></li>
                            <li><a href="notificação.html" class="icon fa fa-bell-o"><span class="label">Notificações</span></a></li>
                            <li><a href="#" class="icon fa fa-ellipsis-v"><span class="label">Mais</span></a></li>
                            <li><a href="UsuarioServletLogout" class="label">Sair</a></li>
                        </ul>
                    </header>
                    <section>
                        <div style="height: 100%;maxwidth: 100%; background-color: #eff1f2; padding: 10px 10px 10px 10px; border-radius: 10px;">

                            <div id="left" style="padding: 10px 10px 10px 10px;  width: 300px;">
                                <img src="data:image/png;image/jpg;base64,<%=usuarioFoto%>" style="max-width: 250px; border-radius: 10px;" alt="Foto publicação"/>
                            </div>                            
                            <div style="padding: 10px 10px 10px 10px;">

                                Nome: <%=usuario.getNome()%> 

                                <a href="usuarioalterar.jsp?pid=<%=usuario.getId()%>" style="float: right; text-decoration: none;">Editar Perfil</a><br><br>

                                User: <%=usuario.getUsuario()%><br><br>

                                E-mail: <%=usuario.getEmail()%><br><br>

                                Posição política: <%=usuario.getPosicao()%><br><br>

                                Bio: <%=usuario.getDescricao()%><br><br>

                                Seguidores: X   Seguindo: Y<br>
                            </div>
                        </div>
                    </section>
                    <h1>Minhas publicações</h1>
                    <div id="postagens">
                        <%
                            Session session1 = HibernateUtil.getSession();
                            String hql = "from Publicacao where id_usuario='" + usuario.getId() + "'";
                            //  Post postagem = (Post) session1.createQuery(hql).list();
                            List<Publicacao> lista = (List) session1.createQuery(hql).list();
                            request.setAttribute("publicacoes", lista);
                            System.out.println(lista);
                            for (Iterator it = lista.iterator(); it.hasNext();) {
                                Publicacao postagem = (Publicacao) it.next();
                                String codigo = postagem.getIdp().toString();
                                byte[] fotoPostagem = postagem.getFoto();
                                String postagemFoto = Base64.getEncoder().encodeToString(fotoPostagem);
                                usuario = postagem.getIdUsuario();
                        %>

                        <div style="display: inline;">
                            <div class="postagem" style="background-color: #eff1f2; padding: 10px 10px 10px 10px; border-radius: 10px; max-width: 220px;">
                                <span id="titulo">
                                    <h2><%=postagem.getTitulo()%></h2>
                                </span><br>
                                <img src="data:image/png;base64,<%=postagemFoto%>" class="padrao" style="max-width: 200px;">
                                <br><br>
                                <span id="conteudo">
                                    <%=postagem.getConteudo()%>
                                </span>
                            </div>
                        </div>

                        <%
                            }
                        %>
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