<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Listagem de Usuários</title>
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css" integrity="sha384-MCw98/SFnGE8fJT3GXwEOngsV7Zt27NXFoaoApmYm81iuXoPkFOJwJ8ERdknLPMO" crossorigin="anonymous">
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
<h1>Listagem de Usuários</h1>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>

<table border="1">
    <thead>
    <tr>
        <th>ID</th>
        <th>Nome</th>
        <th>Email</th>
        <th>Ações</th>
    </tr>
    </thead>
    <tbody>
    <c:forEach var="usuario" items="${listaUsuarios}">
        <tr>
            <td>${usuario.id}</td>
            <td>${usuario.nome}</td>
            <td>${usuario.email}</td>
            <td>
                <a href="UsuariosController?action=editar&id=${usuario.id}">Editar</a>
                &nbsp;
                <a href="UsuariosController?action=deletar&id=${usuario.id}">Deletar</a>
            </td>
        </tr>
    </c:forEach>
    </tbody>
</table>

<p><a href="UsuariosController?action=cadastrar">Cadastrar Novo Usuário</a></p>
</body>
</html>
