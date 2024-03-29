<%@page import="java.util.Base64"%>
<%@page import="servlet.*"%>
<%@page import="org.hibernate.Session"%>
<%@page import="org.hibernate.Transaction"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<jsp:directive.page import="entidades.*" />
<jsp:directive.page import="controle.*" />
<jsp:directive.page import="servlet.*" />


<%
    //Criar variaveis
    Usuario usuario = new Usuario();
    String nome = "";
    String senha = "";
    String email = "";
    String user = "";
    String posicao = "";
    String descricao = "";
    String nascimento = "";
    String estado = "";
    String cpf = "";
    String cell = "";
    String tipo = "";
    //Captura id (se alteração)
    String idUsuario = request.getParameter("pid");

    //Localiza usuario (se alteração)
    if (!idUsuario.isEmpty()) {
        usuario = UsuarioControle.buscar(Integer.parseInt(idUsuario));
        nome = usuario.getNome();
        senha = usuario.getSenha();
        email = usuario.getEmail();
        cpf = usuario.getCPFformatado();
        cell = usuario.getCELLformatado();
        user = usuario.getUsuario();
        posicao = usuario.getPosicao();
        descricao = usuario.getDescricao();
        nascimento = usuario.getNascimento();
        estado = usuario.getEstado();
        tipo = usuario.getTipo();
    } else {
        idUsuario = "";
    }
%>

<!DOCTYPE html>
<html>
    <head>
        <script type="text/javascript" src="js/jquery-1.2.6.pack.js"></script>
        <script type="text/javascript" src="js/jquery.maskedinput-1.1.4.pack.js"/></script>
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/2.1.1/jquery.min.js"></script>
    <script type="text/javascript" src="https://cdnjs.cloudflare.com/ajax/libs/jquery.mask/1.14.0/jquery.mask.js"></script>
    <script>
        $(document).ready(function () {
            var $seuCampoCpf = $("#CPF");
            $seuCampoCpf.mask('000.000.000-00', {reverse: true});
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
        <center><h1>Alterar dados</h1></center>

        <div class="left">
            <form method = "POST" action = "UsuarioServletSA" enctype="multipart/form-data">
                Usuário:<br>
                <input type="text" name="usuario" value="<%=user%>"><br><br>

                Nome:<br>
                <input type="text" name="nome" value="<%=nome%>"><br><br>

                <div hidden>
                    ID<input type="text" name="pid" value="<%=idUsuario%>">
                </div>

                Email:<br>
                <input type="text" name="email" value="<%=email%>"><br><br>

                Senha:<br>
                <input type="password" name="senha" value="<%=senha%>"><br><br>

                <div hidden>
                    Cpf:<br>
                    <input type="text" name="cpf" id="CPF" placeholder="Ex.: 000.000.000-00" maxlength="15" value="<%=cpf%>"><br><br>
                </div>

                Número:<br>
                <input type="text" name="telefone" maxlength="13" value="<%=cell%>"><br><br>

                Descrição:<br>
                <input type="text" name="descricao" value="<%=descricao%>" ><br><br>

                </div>
                <div hidden>
                    Data de nascimento: <input type="date" name="nascimento" value="<%=nascimento%>"><br><br>
                </div>

                <div hidden>
                    Estado:<br>
                    <select name="estado" value="<%=estado%>">
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

                    Tipo de usuário:<br>
                    <select name="tipo" value="<%=tipo%>">
                        <option value="Eleitor">Eleitor</option>
                        <option value="Político">Político</option>
                    </select><br><br>
                </div>

                Posição política:<br>
                <select name="posicao" value="<%=posicao%>">
                    <option value="direita">Direita</option>
                    <option value="esquerda">Esquerda</option>
                    <option value="centro">Centro</option>
                    <option value="nulo">Prefiro não responder</option>
                </select><br><br>

                Escolher imagem:
                <input type="file" name="foto" accept="image/png, image/jpeg" value="<%=usuario.getFoto()%>"><br><br>
                
                <input type="submit" value="Confirmar">
            </form>
        </div>
</body>
</html>