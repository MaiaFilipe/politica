<%-- 
    Document   : publicacaocompleta
    Created on : 23/10/2019, 16:54:38
    Author     : aluno
--%>

<%@page import="java.util.Iterator"%>
<%@page import="java.util.List"%>
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
    
Avaliacao avaliacao = (Avaliacao) session.getAttribute("AvaliacaoCurtida");
   

    
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
                            <li><a href="#" class="icon fa fa-bell-o"><span class="label">Notificações</span></a></li>
                            <li><a href="#" class="icon fa fa-ellipsis-v"><span class="label">Mais</span></a></li>
                            <li><a href="UsuarioServletLogout" class="label">Sair</a></li>
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
                        <h1>Comentários</h1>
                        <table>
                            <thead>
                                <tr>
                                    <th>Autor</th>
                                    <th>Comentário</th>
                                </tr>
                            </thead>
                            <tbody>
                                <%

                                    List<Comentario> lista = ComentarioControle.listar();
                                    request.setAttribute("comentario", lista);

                                    for (Iterator it = lista.iterator(); it.hasNext();) {
                                        Comentario comentario = (Comentario) it.next();
                                        comentario.setPublicacao(publicacao);
                                        Usuario comentador = comentario.getComentador();
                                %>
                                <tr>
                                    <td><%=comentador.getNome()%></td>
                                    <td style="max-width: 10px;"><%=comentario.getComentario()%></td>
                                    <%
                                        if (usuario.getId() + 1 == comentador.getId() + 1) {
                                            System.out.println(usuario.getId() + " e " + comentador.getId() + " são iguais.");
                                    %>
                                    <td>
                                        <div>
                                            <form method="get" action="ComentarioServletD">
                                                <input type="text" name="page" value="<%=publicacao.getIdp()%>" style="display: none;">
                                                <input type="text" name="pid" value="<%=comentario.getId()%>" style="display: none;">
                                                <input type="submit" value="Deletar">
                                            </form>
                                        </div>
                                        </a>
                                    </td>
                                    <%
                                        }
                                    %>
                                </tr>
                                <%
                                    }
                                %>
                            </tbody>
                        </table>
                        <form method="POST" action="ComentarioServletSA">
                            <div class="col-12">
                                <textarea name="comentario" id="demo-message" placeholder="Digite seu comentário" rows="6"></textarea>
                            </div>
                            <div hidden>
                                <input type="text" name="comentador" value="<%=usuario.getId()%>">
                                <input type="text" name="publicacao" value="<%=publicacao.getIdp()%>">
                                <input type="text" name="pid" value="">
                            </div>
                            <br>
                            <input type="submit" class="button" value="Comentar">
                        </form>
                        <form method="POST" action="AvaliacaoServletS">
                            <div hidden>
                                <input type="text" name="avaliador" value="<%=usuario.getId()%>">
                                <input type="text" name="publicacao" value="<%=publicacao.getIdp()%>">
                                <input type="text" name="pid" value="">
                            </div>
                            <br>
                           
                        </form>

                        <header id="header">
                            <a href="index.html" class="logo"><strong></strong> </a>
                            <ul class="icons">
                                <% 
                                    
                                        if(avaliacao == null){
                                        %>
                                        <li><a href="curtida?valor=1&avaliador=<%=usuario.getId()%>&publicacao=<%=publicacao.getIdp()%>&pid=" class="icon  fa fa-thumbs-o-up"><span class="label">Curtir</span></a></li>
                                        <li><a href="curtida?valor=-1&avaliador=<%=usuario.getId()%>&publicacao=<%=publicacao.getIdp()%>" class="icon  fa fa-thumbs-o-down"><span class="label">Descurtir</span></a></li>
                                        <%
                                        } else if(avaliacao.getValor() == 1 ){
                                        %>
                                        <li><a href="curtida?valor=0&avaliador=<%=usuario.getId()%>&publicacao=<%=publicacao.getIdp()%>" class="icon  fa fa-thumbs-up"><span class="label">Curtido</span></a></li>
                                         <li><a href="curtida?valor=-1&avaliador=<%=usuario.getId()%>&publicacao=<%=publicacao.getIdp()%>" class="icon  fa fa-thumbs-o-down"><span class="label">Descurtir</span></a></li>
                                        <%    
                                        } else {
                                          %>
                                        <li><a href="curtida?valor=1&avaliador=<%=usuario.getId()%>&publicacao=<%=publicacao.getIdp()%>&pid=" class="icon  fa fa-thumbs-o-up"><span class="label">Curtir</span></a></li>
                                        <li><a href="curtida?valor=0&avaliador=<%=usuario.getId()%>&publicacao=<%=publicacao.getIdp()%>" class="icon  fa fa-thumbs-down"><span class="label">Descurtido</span></a></li>
                                        <%  
                                        }

                                %>
                                
                                <li><a href="#" class="icon  fa fa-flag-o"><span class="label">Denunciar</span></a></li>
                                <li><a href="#" class="icon fa fa-comments-o"><span class="label">Comentar</span></a></li>
                                <li><a href="#" class="icon fa fa-share"><span class="label">Compatilhar</span></a></li>
                            </ul>
                        </header>
                    </section>

                </div>
            </div>

            <!-- Sidebar -->
            <%@include file="menulateral.jspf"%> 

        </div>

        <!-- Scripts -->
        <script src="assets/js/jquery.min.js"></script>
        <script src="assets/js/browser.min.js"></script>
        <script src="assets/js/breakpoints.min.js"></script>
        <script src="assets/js/util.js"></script>
        <script src="assets/js/main.js"></script>

    </body>
</html>