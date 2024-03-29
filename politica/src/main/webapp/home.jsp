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
                            <li><a href="Notifica��o.html" class="icon fa fa-bell-o"><span class="label">Notifica��es</span></a></li>
                            <li><a href="#" class="icon fa fa-ellipsis-v"><span class="label">Mais</span></a></li>
                            <li><a href="UsuarioServletLogout" class="label">Sair</a></li>
                        </ul>
                    </header>

                    <!-- Banner -->
                    <section id="banner">
                        <div class="content">
                            <header>
                                <h1>Pol�tica se<br />
                                    discute!</h1>
                                <p>Site desenvolvido para debates pol�ticos</p>
                            </header>
                            <p>� comum ouvir que pol�tica n�o � um t�pico discut�vel. Mas aqui, n�s discordamos! Debates, pol�micas e opini�es s�o levantadas para que o conceito de pol�tica, seja ela nacional ou n�o, esteja cada vez mais vivo no cotidiano. Junte-se a n�s! Discuta a pol�tica! </p>
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
                                    <p>Comportamentos agressivos e desrespeitosos n�o s�o aceitados! Denuncie clicando no s�mbolo da bandeira que aprece em cada publica��o e nosso administradores ir�o avaliar a den�ncia.</p>
                                </div>
                            </article>
                            <article>
                                <span class="icon fa fa-check-square-o"></span>
                                <div class="content">
                                    <h3>Enquentes</h3>
                                    <p>As enquetes s�o uma maneira r�pida e eficaz de saber a opini�o da maioria. Vote dizendo se concorda, discorda ou se � imparcial ao assunto. Voc� tamb�m pode criar suas pr�prias enquetes!</p>
                                </div>
                            </article>
                            <article>
                                <span class="icon fa fa-share"></span>
                                <div class="content">
                                    <h3>Compartilhe</h3>
                                    <p>Com esse bot�o, voc� compartilha publica��es de outros usu�rios no seu perfil. Um jeito pr�tico e f�cil de mostrar que concorda com aquele conte�do  que acha que ele deve ser divulgado!</p>
                                </div>
                            </article>
                            <article>
                                <span class="icon fa fa-comments-o"></span>
                                <div class="content">
                                    <h3>Comente</h3>
                                    <p>Expresse sua opini�o pol�tica sobre nos coment�rios, debata, traga reflex�es! � importante lembrar que todo coment�rio deve respeitar outras opini�es e deve ser feito de forma saud�vel.</p>
                                </div>
                            </article>
                        </div>
                    </section>

                    <!-- Section -->
                    <section>
                        <header class="major">
                            <h2>Pol�tica Internacional:</h2>
                        </header>
                        <div class="posts">
                            <article>
                                <a href="#" class="image"><img src="Imagens/fran�a.jpg" alt="" /></a>
                                <h3>Fran�a</h3>
                                <p>Mais de 1,7 mil s�o detidos na Fran�a ap�s protestos; governo sinaliza medidas.</p>
                                <ul class="actions">
                                    <li><a href="https://g1.globo.com/mundo/noticia/2018/12/09/mais-de-17-mil-pessoas-sao-detidas-na-franca-apos-protestos.ghtml" target="_blank" class="button">Mais</a></li>
                                </ul>
                            </article>
                            <article>
                                <a href="#" class="image"><img src="Imagens/trump.jpg" alt="" /></a>
                                <h3>Estados Unidos</h3>
                                <p>Donald Trump sob press�o devido � Ar�bia Saudita.</p>
                                <ul class="actions">
                                    <li><a href="https://pt.euronews.com/2018/10/21/donald-trump-sob-pressao-devido-a-arabia-saudita" class="button" target="_blank">Mais</a></li>
                                </ul>
                            </article>
                            <article>
                                <a href="#" class="image"><img src="Imagens/cuba.jpeg" alt="" /></a>
                                <h3>Cuba</h3>
                                <p>Cuba rebate acusa��es de retrocesso no pa�s.</p>
                                <ul class="actions">
                                    <li><a href="https://noticias.r7.com/internacional/cuba-rebate-acusacoes-de-retrocesso-no-pais-07122018"  target="_blank" class="button">Mais</a></li>
                                </ul>
                            </article>
                            <article>
                                <a href="#" class="image"><img src="Imagens/mexico.jpg" alt="" /></a>
                                <h3>M�xico</h3>
                                <p>Cansados de esperar por ref�gio, migrantes de caravana violam fronteira dos EUA.</p>
                                <ul class="actions">
                                    <li><a href="https://g1.globo.com/mundo/noticia/2018/12/04/cansados-de-esperar-por-refugio-migrantes-de-caravana-violam-fronteira-dos-eua.ghtml"target="_blank" class="button">Mais</a></li>
                                </ul>
                            </article>
                            <article>
                                <a href="#" class="image"><img src="Imagens/portugal.jpg" alt="" /></a>
                                <h3>Portugal</h3>
                                <p>Portugal pro�be a utiliza��o de mais de mil animais selvagens em circos.</p>
                                <ul class="actions">
                                    <li><a href="https://g1.globo.com/natureza/noticia/2018/11/01/portugal-proibe-a-utilizacao-de-mais-de-mil-animais-selvagens-em-circos.ghtml" target="_blank" class="button">Mais</a></li>
                                </ul>
                            </article>
                            <article>
                                <a href="#" class="image"><img src="Imagens/venezuela.jpg" alt="" /></a>
                                <h3>Venezuela</h3>
                                <p>Ap�s encontro com Putin, Nicol�s Maduro anuncia investimento bilion�rio da R�ssia na Venezuela.</p>
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