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
    .form-container {
        width: 40%;
        margin: 0 auto;
        padding-top: 40px;
    }
</style>
<head>  <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css" integrity="sha384-MCw98/SFnGE8fJT3GXwEOngsV7Zt27NXFoaoApmYm81iuXoPkFOJwJ8ERdknLPMO" crossorigin="anonymous">

<%--    <link rel="stylesheet" type="text/css" href="css/styles.css">--%>

    <title>Login</title>

</head>
<body >
<!-- Só uma imagem -->
<nav class="navbar navbar-light bg-light">
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

<%--<h1>Bem-vindo à Biblioteca</h1>--%>
<div class="form-container">
    <h1> Login </h1>
<form>
    <div class="form-group">
        <label for="exampleInputEmail1">Endereço de email</label>
        <input type="email" class="form-control" id="exampleInputEmail1" aria-describedby="emailHelp" placeholder="Seu email">
        <small id="emailHelp" class="form-text text-muted">Nunca vamos compartilhar seu email, com ninguém.</small>
    </div>
    <div class="form-group">
        <label for="exampleInputPassword1">Senha</label>
        <input type="password" class="form-control" id="exampleInputPassword1" placeholder="Senha">
    </div>
    <div >
        <p><a href="UsuariosController?action=cadastrar">Não tem cadastro? Clique aqui!</a></p>
    </div>
    <button type="submit" class="btn btn-primary">Enviar</button>
</form>
</div>
</body>
</html>
