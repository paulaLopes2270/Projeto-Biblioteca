<%--
  Created by IntelliJ IDEA.
  User: plnhs
  Date: 14/07/2024
  Time: 15:31
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>

<!DOCTYPE html>
<html>
<style>
    .nav-item a {
        color: #007BFF; /* Cor padrão dos links */
    }

</style>
<head>  <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css" integrity="sha384-MCw98/SFnGE8fJT3GXwEOngsV7Zt27NXFoaoApmYm81iuXoPkFOJwJ8ERdknLPMO" crossorigin="anonymous">

    <link rel="stylesheet" type="text/css" href="css/styles.css">
    <title>Biblioteca</title>

</head>
<body>
<!-- Só uma imagem -->
<nav class="navbar navbar-light bg-light">
<%--   <img src="https://i.ibb.co/4ZQBrkq/DALL-E-2024-07-19-21-57-46-A-cute-robot-reading-a-book-similar-to-the-provided-image-The-robot-shoul.webp" alt="DALL-E-2024-07-19-21-57-46-A-cute-robot-reading-a-book-similar-to-the-provided-image-The-robot-shoul" border="0" /></a>--%>
    <a class="navbar-brand" href="#">
        <img src="https://i.ibb.co/FD5vTcV/logo.png" width="220" height="220" alt="Bibliotech">
    </a>
    <ul class="nav justify-content-end">
        <li class="nav-item">
            <a class="nav-link active" href="LivrosController?action=listar">Listar</a>
        </li>
        <li class="nav-item">
            <a class="nav-link" href="cadastrar.jsp">Cadastrar</a>
        </li>
    </ul>
</nav>

<h1>Bem-vindo à Biblioteca</h1>
<a href="cadastrar.jsp">Cadastrar Livro</a>
<a href="LivrosController?action=listar">Listar Livros</a>
</body>
</html>
