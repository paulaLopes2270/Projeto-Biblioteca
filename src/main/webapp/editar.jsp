<%--
  Created by IntelliJ IDEA.
  User: plnhs
  Date: 12/07/2024
  Time: 21:34
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
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
    <meta charset="UTF-8">
    <title>Alterar Livro</title>
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css" integrity="sha384-MCw98/SFnGE8fJT3GXwEOngsV7Zt27NXFoaoApmYm81iuXoPkFOJwJ8ERdknLPMO" crossorigin="anonymous">
    <link rel="stylesheet" type="text/css" href="css/styles.css">
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

<header>

</header>

<div class="form-container">
    <h1>Alterar Livro</h1>
    <nav>
        <a href="LivrosController?action=listar">Listar Livros</a>
    </nav>

    <form class="row g-3" action="LivrosController?action=editar" method="post">
        <div class="col-md-6">
            <label for="isbn" class="form-label" >ISBN</label>
            <input type="text" id="isbn" name="isbn" readonly class="form-control" value="${livro.isbn}">
        </div>
        <div class="col-md-6">
            <label for="nome" class="form-label">Nome</label>
            <input type="text" id="nome" name="nome"  class="form-control" value="${livro.nome}">
        </div>
        <div class="col-12">
            <label for="categoria" class="form-label">Categoria</label>
            <input type="text" id="categoria" name="categoria"  class="form-control"  value="${livro.categoria}">
        </div>
        <div class="col-12">
            <label for="quantidade" class="form-label">Quantidade</label>
            <input type="number" id="quantidade" name="quantidade"  class="form-control" value="${livro.quantidade}">
        </div>
        <div class="col-12 mt-3">
            <button type="submit" class="btn btn-primary">Alterar</button>
        </div>
    </form>
</div>
</body>
</html>
