<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ page import="java.util.List" %>
<%@ page import="Model.Usuarios" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Lista de Usuários</title>
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css">
    <style>
        .nav-item a {
            color: #007BFF;
        }
        .table-container {
            width: 80%;
            margin: 0 auto;
            padding-top: 40px;
        }
    </style>
</head>
<body>
<nav class="navbar navbar-light bg-light">
    <a class="navbar-brand" href="#">
        <img src="https://i.ibb.co/FD5vTcV/logo.png" width="220" height="220" alt="Bibliotech">
    </a>
    <ul class="nav justify-content-end">
        <li class="nav-item">
            <a class="nav-link" href="UsuariosController?action=cadastrar">Cadastrar Usuário</a>
        </li>
    </ul>
</nav>

<div class="table-container">
    <h1>Lista de Usuários</h1>
    <table class="table table-striped">
        <thead>
        <tr>
            <th>ID</th>
            <th>Nome</th>
            <th>Email</th>
            <th>Ações</th>
        </tr>
        </thead>
        <tbody>
        <%
            List<Usuarios> listaUsuarios = (List<Usuarios>) request.getAttribute("listaUsuarios");
            if (listaUsuarios != null) {
                for (Usuarios usuario : listaUsuarios) {
        %>
        <tr>
            <td><%= usuario.getId() %></td>
            <td><%= usuario.getNome() %></td>
            <td><%= usuario.getEmail() %></td>
            <td>
                <a href="UsuariosController?action=editar&id=<%= usuario.getId() %>" class="btn btn-primary btn-sm">Editar</a>
                <a href="UsuariosController?action=deletar&id=<%= usuario.getId() %>" class="btn btn-danger btn-sm" onclick="return confirm('Você tem certeza que deseja excluir este usuário?');">Excluir</a>
            </td>
        </tr>
        <%
                }
            }
        %>
        </tbody>
    </table>
</div>
</body>
</html>
