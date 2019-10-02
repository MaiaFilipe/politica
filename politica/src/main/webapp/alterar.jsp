<%@page import="iff.politica.servlet.UsuarioControle"%>
<%@page import="iff.politica.servlet.UsuarioServletSA"%>
<%@page import="org.hibernate.Session"%>
<%@page import="org.hibernate.Transaction"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<jsp:directive.page import="iff.politica.usuarios.*" />
<jsp:directive.page import="iff.politica.utilidades.*" />
<jsp:directive.page import="iff.politica.servlet.*" />

        <%
        //Criar variaveis
        Usuarioc usuario = new Usuarioc();
        String nome = "";
        String senha = "";
        String email = "";
        //Captura id (se alteração)
        String idUsuario = request.getParameter("pid");
        
        //Localiza usuario (se alteração)
        if(!idUsuario.isEmpty()){
            usuario = UsuarioControle.buscar(Integer.parseInt(idUsuario));
            nome = usuario.getNomec();
            senha = usuario.getSenhac();
            email = usuario.getEmailc();
        }
        else{
            idUsuario = "";
        }
        %>

<!DOCTYPE html>
<html>
    <head>
        <script type="text/javascript" src="js/jquery-1.2.6.pack.js"></script>
        <script type="text/javascript" src="js/jquery.maskedinput-1.1.4.pack.js"/></script>
    <script type="text/javascript">
        $(document).ready(function () {
            $("#cpf").mask("999.999.999-99");
        });
    </script>
    <meta charset="utf-8">
    <style>
        @import url('https://fonts.googleapis.com/css?family=Black+Ops+One');
    </style>
    <link rel="stylesheet" type="text/css" href="Pagina_cadastro.css">
    <title>Cadastro</title>
</head>
<body>
    <div id = block>
        <center><h1>Cadastro usuário Comum</h1></center>

        <div class="left">
            <form method = "POST" action = "UsuarioServletSA">
                Usuário:<br>
                <input type="text" name="usuario"><br><br>

                Nome:<br>
                <input type="text" name="nome" value="<%=nome%>"><br><br>

                <div hidden>
                    ID<input type="text" name="pid" value="<%=idUsuario%>">
                </div>
                
                Email:<br>
                <input type="text" name="email" value="<%=email%>"><br><br>

                Senha:<br>
                <input type="password" name="senha" value="<%=senha%>"><br><br>

                Cpf:<br>
                <input type="text" name="cpf" placeholder="Ex.: 000.000.000-00" maxlength="14"><br><br>

                Número:<br>
                <input type="text" name="cell" maxlength="13"><br><br>

                Descrição:<br>
                <input type="text" name="descricao"><br><br>

                </div>
                Data de nascimento: <input type="date" name="nascimento"><br><br>

                Estado:<br>
                <select name="estado">
                    <option value="AC">Acre (AC)</option>
                    <option value="AL">Alagoas (AL)</option>
                    <option value="AP">Amapá (AP)</option>
                    <option value="AM">Amazonas (AM)</option>
                    <option value="BA">Bahia (BA)</option>
                    <option value="CE">Ceará (CE)</option>
                    <option value="DF">Distrito Federal (DF)</option>
                    <option value="ES">Espírito Santo (ES)</option>
                    <option value="GO">Goiás (GO)</option>
                    <option value="MA">Maranhão (MA)</option>
                    <option value="MT">Mato Grosso (MT)</option>
                    <option value="MS">Mato Grosso do Sul (MS)</option>
                    <option value="MG">Minas Gerais (MG)</option>
                    <option value="PA">Pará (PA)</option>
                    <option value="PB">Paraíba (PB)</option>
                    <option value="PR">Paraná (PR)</option>
                    <option value="PE">Pernambuco (PE)</option>
                    <option value="PI">Piauí (PI)</option>
                    <option value="RJ">Rio de Janeiro (RJ)</option>
                    <option value="RN">Rio Grande do Norte (RN)</option>
                    <option value="RS">Rio Grande do Sul (RS)</option>
                    <option value="RO">Rondônia (RO)</option>
                    <option value="RR">Roraima (RR)</option>
                    <option value="SC">Santa Catarina (SC)</option>
                    <option value="SP">São Paulo (SP)</option>
                    <option value="SE">Sergipe (SE)</option>
                    <option value="TO">Tocantins (TO)</option>
                </select><br><br>

                Posição política:<br>
                <select name="posicao">
                    <option value="direita">Direita</option>
                    <option value="esquerda">Esquerda</option>
                    <option value="centro">Centro</option>
                    <option value="semResposta">Prefiro não responder</option>
                </select><br><br>

                <input type="submit" value="Confirmar">
            </form>
        </div>
</body>
</html>