<%--
  Created by IntelliJ IDEA.
  User: plnhs
  Date: 12/07/2024
  Time: 21:36
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<!DOCTYPE html>
<html>
<style>
    .nav-item a {
        color: #007BFF; /* Cor padrão dos links */
    }

    .form-container {
        width: 60%;
        margin: 0 auto;
        max-width: 800px; /* limite de largura máxima */
        margin-top: 3rem;
    }
    </style>
<head>
    <title>Listar Livros</title>
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css" integrity="sha384-MCw98/SFnGE8fJT3GXwEOngsV7Zt27NXFoaoApmYm81iuXoPkFOJwJ8ERdknLPMO" crossorigin="anonymous">
<%--    <link rel="stylesheet" href="css/styles.css">--%>
</head>
<body>
<%
    HttpSession httpSession = request.getSession(false);
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
    <h1>Cadastrar Livro</h1>
    <form class="row g-3" action="LivrosController?action=cadastrar" method="post">
        <div class="col-md-6">
            <label for="isbn" class="form-label">ISBN</label>
            <input type="text" id="isbn" name="isbn" required class="form-control" maxlength="13">
        </div>
        <div class="col-md-6">
            <label for="nome" class="form-label">Nome</label>
            <input type="text" id="nome" name="nome" required class="form-control">
        </div>
        <div class="col-12">
            <label for="categoria" class="form-label">Categoria</label>
            <input type="text" id="categoria" name="categoria" placeholder="Informe a categoria do livro" class="form-control">
        </div>
        <div class="col-12">
            <label for="quantidade" class="form-label">Quantidade</label>
            <input type="number" id="quantidade" name="quantidade" required class="form-control">
        </div>
        <div class="col-12 mt-3">
            <button type="submit" class="btn btn-primary">Cadastrar</button>
        </div>
    </form>
</div>

</body>
</html>
