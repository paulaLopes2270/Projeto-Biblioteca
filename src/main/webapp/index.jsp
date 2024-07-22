<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ page import="jakarta.servlet.http.HttpSession" %>
<%@ page import="jakarta.servlet.http.HttpServletRequest" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Login</title>
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css" integrity="sha384-MCw98/SFnGE8fJT3GXwEOngsV7Zt27NXFoaoApmYm81iuXoPkFOJwJ8ERdknLPMO" crossorigin="anonymous">
    <style>
        .nav-item a {
            color: #007BFF; /* Cor padrão dos links */
        }
        .form-container {
            width: 40%;
            margin: 0 auto;
            padding-top: 40px;
        }
        .error-message {
            color: red;
            margin-bottom: 20px;
        }
        .success-message {
            color: green;
            margin-bottom: 20px;
        }
    </style>
</head>
<body>
<%
    HttpServletRequest req = (HttpServletRequest) request;
    HttpSession httpSession = req.getSession(false);
    boolean isLoggedIn = (httpSession != null && httpSession.getAttribute("user") != null);
%>
<nav class="navbar navbar-light bg-light">
    <a class="navbar-brand" href="#">
        <img src="https://i.ibb.co/FD5vTcV/logo.png" width="220" height="220" alt="Bibliotech">
    </a>
    <ul class="nav justify-content-end">
        <li class="nav-item">
            <a class="nav-link active" href="LivrosController?action=listar">Listar</a>
        </li>
        <% if (isLoggedIn) { %>
        <li class="nav-item">
            <a class="nav-link" href="LogoutController">Logout</a>
        </li>
        <% } else { %>
        <li class="nav-item">
            <a class="nav-link" href="index.jsp">Login</a>
        </li>
        <% } %>
    </ul>
</nav>

<div class="form-container">
    <h1>Login</h1>
    <% if ("true".equals(request.getParameter("error"))) { %>
    <div class="error-message">Credenciais inválidas. Tente novamente.</div>
    <% } else if ("true".equals(request.getParameter("logout"))) { %>
    <div class="success-message">Você foi deslogado com sucesso.</div>
    <% } else if ("true".equals(request.getParameter("success"))) { %>
    <div class="success-message">Cadastro realizado com sucesso. Faça login abaixo.</div>
    <% } %>
    <form action="LoginController" method="post">
        <div class="form-group">
            <label for="email">Endereço de email</label>
            <input type="email" class="form-control" id="email" name="email" placeholder="Seu email" required>
            <small id="emailHelp" class="form-text text-muted">Nunca vamos compartilhar seu email, com ninguém.</small>
        </div>
        <div class="form-group">
            <label for="senha">Senha</label>
            <input type="password" class="form-control" id="senha" name="senha" placeholder="Senha" required>
        </div>
        <div>
            <p><a href="UsuariosController?action=cadastrar">Não tem cadastro? Clique aqui!</a></p>
        </div>
        <button type="submit" class="btn btn-primary">Enviar</button>
    </form>
</div>

<script>
    // Verifique se há um parâmetro de erro, logout ou sucesso na URL
    const urlParams = new URLSearchParams(window.location.search);
    if (urlParams.has('error')) {
        console.error('Credenciais inválidas. Tente novamente.');
    } else if (urlParams.has('logout')) {
        console.log('Você foi deslogado com sucesso.');
    } else if (urlParams.has('success')) {
        console.log('Cadastro realizado com sucesso.');
    }
</script>
</body>
</html>
