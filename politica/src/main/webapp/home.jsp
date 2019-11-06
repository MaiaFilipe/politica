<%@page import="entidades.Usuario"%>
<!DOCTYPE HTML>

<html>
    <head>
        <title>Home</title>
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
                        <a href="home.jsp" class="logo"><strong>Homepage</strong> </a>
                        <ul class="icons">

                            <%
                                Usuario usuario = (Usuario) session.getAttribute("UsuarioLogado");
                            %>

                            <li><a href="usuarioperfil.jsp" ><span class="label"><%=usuario.getNome()%></span></a></li>
                            <li><a href="Notificação.html" class="icon fa fa-bell-o"><span class="label">Notificações</span></a></li>
                            <li><a href="#" class="icon fa fa-ellipsis-v"><span class="label">Mais</span></a></li>
                            <li><a href="UsuarioServletLogout" class="label">Sair</a></li>
                        </ul>
                    </header>

                    <!-- Banner -->
                    <section id="banner">
                        <div class="content">
                            <header>
                                <h1>Política se<br />
                                    discute!</h1>
                                <p>Site desenvolvido para debates políticos</p>
                            </header>
                            <p>É comum ouvir que política não é um tópico discutível. Mas aqui, nós discordamos! Debates, polêmicas e opiniões são levantadas para que o conceito de política, seja ela nacional ou não, esteja cada vez mais vivo no cotidiano. Junte-se a nós! Discuta a política! </p>
                            <ul class="actions">
                                <li><a href="#" class="button big">Saiba Mais</a></li>
                            </ul>
                        </div>
                        <span class="image object">
                            <img src="Imagens/politica_background.jpg" alt="" />
                        </span>
                    </section>

                    <!-- Section -->
                    <section>
                        <header class="major">
                            <h2>Dicas</h2>
                        </header>
                        <div class="features">
                            <article>
                                <span class="icon fa fa-flag-o"></span>
                                <div class="content">
                                    <h3>Denuncie</h3>
                                    <p>Comportamentos agressivos e desrespeitosos não são aceitados! Denuncie clicando no símbolo da bandeira que aprece em cada publicação e nosso administradores irão avaliar a denúncia.</p>
                                </div>
                            </article>
                            <article>
                                <span class="icon fa fa-check-square-o"></span>
                                <div class="content">
                                    <h3>Enquentes</h3>
                                    <p>As enquetes são uma maneira rápida e eficaz de saber a opinião da maioria. Vote dizendo se concorda, discorda ou se é imparcial ao assunto. Você também pode criar suas próprias enquetes!</p>
                                </div>
                            </article>
                            <article>
                                <span class="icon fa fa-share"></span>
                                <div class="content">
                                    <h3>Compartilhe</h3>
                                    <p>Com esse botão, você compartilha publicações de outros usuários no seu perfil. Um jeito prático e fácil de mostrar que concorda com aquele conteúdo  que acha que ele deve ser divulgado!</p>
                                </div>
                            </article>
                            <article>
                                <span class="icon fa fa-comments-o"></span>
                                <div class="content">
                                    <h3>Comente</h3>
                                    <p>Expresse sua opinião política sobre nos comentários, debata, traga reflexões! É importante lembrar que todo comentário deve respeitar outras opiniões e deve ser feito de forma saudável.</p>
                                </div>
                            </article>
                        </div>
                    </section>

                    <!-- Section -->
                    <section>
                        <header class="major">
                            <h2>Política Internacional:</h2>
                        </header>
                        <div class="posts">
                            <article>
                                <a href="#" class="image"><img src="Imagens/frança.jpg" alt="" /></a>
                                <h3>França</h3>
                                <p>Mais de 1,7 mil são detidos na França após protestos; governo sinaliza medidas.</p>
                                <ul class="actions">
                                    <li><a href="https://g1.globo.com/mundo/noticia/2018/12/09/mais-de-17-mil-pessoas-sao-detidas-na-franca-apos-protestos.ghtml" target="_blank" class="button">Mais</a></li>
                                </ul>
                            </article>
                            <article>
                                <a href="#" class="image"><img src="Imagens/trump.jpg" alt="" /></a>
                                <h3>Estados Unidos</h3>
                                <p>Donald Trump sob pressão devido à Arábia Saudita.</p>
                                <ul class="actions">
                                    <li><a href="https://pt.euronews.com/2018/10/21/donald-trump-sob-pressao-devido-a-arabia-saudita" class="button" target="_blank">Mais</a></li>
                                </ul>
                            </article>
                            <article>
                                <a href="#" class="image"><img src="Imagens/cuba.jpeg" alt="" /></a>
                                <h3>Cuba</h3>
                                <p>Cuba rebate acusações de retrocesso no país.</p>
                                <ul class="actions">
                                    <li><a href="https://noticias.r7.com/internacional/cuba-rebate-acusacoes-de-retrocesso-no-pais-07122018"  target="_blank" class="button">Mais</a></li>
                                </ul>
                            </article>
                            <article>
                                <a href="#" class="image"><img src="Imagens/mexico.jpg" alt="" /></a>
                                <h3>México</h3>
                                <p>Cansados de esperar por refúgio, migrantes de caravana violam fronteira dos EUA.</p>
                                <ul class="actions">
                                    <li><a href="https://g1.globo.com/mundo/noticia/2018/12/04/cansados-de-esperar-por-refugio-migrantes-de-caravana-violam-fronteira-dos-eua.ghtml"target="_blank" class="button">Mais</a></li>
                                </ul>
                            </article>
                            <article>
                                <a href="#" class="image"><img src="Imagens/portugal.jpg" alt="" /></a>
                                <h3>Portugal</h3>
                                <p>Portugal proíbe a utilização de mais de mil animais selvagens em circos.</p>
                                <ul class="actions">
                                    <li><a href="https://g1.globo.com/natureza/noticia/2018/11/01/portugal-proibe-a-utilizacao-de-mais-de-mil-animais-selvagens-em-circos.ghtml" target="_blank" class="button">Mais</a></li>
                                </ul>
                            </article>
                            <article>
                                <a href="#" class="image"><img src="Imagens/venezuela.jpg" alt="" /></a>
                                <h3>Venezuela</h3>
                                <p>Após encontro com Putin, Nicolás Maduro anuncia investimento bilionário da Rússia na Venezuela.</p>
                                <ul class="actions">
                                    <li><a href="https://g1.globo.com/mundo/noticia/2018/12/06/apos-encontro-com-putin-nicolas-maduro-anuncia-investimento-bilionario-da-russia-na-venezuela.ghtml" target="_blank" class="button">Mais</a></li>
                                </ul>
                            </article>
                        </div>
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