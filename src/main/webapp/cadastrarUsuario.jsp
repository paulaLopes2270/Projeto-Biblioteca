<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
  <meta charset="UTF-8">
  <title>Cadastro de Usuário</title>
  <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css" integrity="sha384-MCw98/SFnGE8fJT3GXwEOngsV7Zt27NXFoaoApmYm81iuXoPkFOJwJ8ERdknLPMO" crossorigin="anonymous">
  <style>
    .nav-item a {
      color: #007BFF; /* Cor padrão dos links */
    }
    .form-container {
      width: 60%;
      margin: 0 auto;
    }
  </style>
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
<div class="container mt-5">
  <div class="form-container">
    <h1>Cadastro de Usuário</h1>

    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

    <%-- Mostra mensagens de erro --%>
    <%@ include file="mensagemErro.jsp" %>

    <form action="usuario?action=cadastrar" method="post" class="mt-4">
      <div class="form-group">
        <label for="nome">Nome</label>
        <input type="text" id="nome" name="nome" required class="form-control" placeholder="Seu nome">
      </div>
      <div class="form-group">
        <label for="email">Endereço de email</label>
        <input type="email" id="email" name="email" required class="form-control" aria-describedby="emailHelp" placeholder="Seu email">
        <small id="emailHelp" class="form-text text-muted">Nunca vamos compartilhar seu email com ninguém.</small>
      </div>
      <div class="form-group">
        <label for="senha">Senha</label>
        <input type="password" id="senha" name="senha" required class="form-control" placeholder="Senha">
      </div>
      <button type="submit" class="btn btn-primary">Enviar</button>
    </form>

    <p class="mt-3"><a href="usuario?action=listar">Voltar para Listagem</a></p>
  </div>
</div>
</body>
</html>
