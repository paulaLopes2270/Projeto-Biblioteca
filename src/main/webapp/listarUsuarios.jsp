<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Listagem de Usuários</title>
</head>
<body>
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
