<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<style>
    .nav-item a {
        color: #007BFF; /* Cor padrão dos links */
    }
    .table-wrapper {
             max-width: 80%;
             margin: 0 auto;
             padding-top: 20px;
    }
    .table-container {
        overflow-x: auto;
    }
</style>
</style>
<head>
    <meta charset="UTF-8">
    <title>Listagem de Usuários</title>
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
        <li class="nav-item">
            <a class="nav-link" href="cadastrar.jsp">Cadastrar</a>
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
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>


<div class="table-wrapper">
    <h2>Lista de Usuários</h2>
    <c:if test="${not empty sessionScope.user}">
        <a href="LivrosController?action=listarUsuarios">Cadastrar Livro</a>
    </c:if>
    <div class="table-container">
        <table class="table table-striped table-bordered">
            <thead>
            <tr>
                <th scope="col">ID</th>
                <th scope="col">Nome</th>
                <th scope="col">Email</th>
                <c:if test="${not empty sessionScope.user}">
                    <th>Ações</th>
                </c:if>
            </tr>
            </thead>
            <tbody>
            <c:forEach var="usuario" items="${listaUsuarios}">
                <tr>
                    <td>${usuario.id}</td>
                    <td>${usuario.nome}</td>
                    <td>${usuario.email}</td>
                    <c:if test="${not empty sessionScope.user}">
                        <td>
                            <a href="LivrosController?action=editar&isbn=${usuario.id}">Editar</a>
                            <a href="LivrosController?action=deletar&isbn=${usuario.id}" onclick="return confirm('Tem certeza que deseja deletar este livro?');">Deletar</a>
                        </td>
                    </c:if>
                </tr>
            </c:forEach>
            </tbody>
        </table>
        <p><a href="UsuariosController?action=cadastrar">Cadastrar Novo Usuário</a></p>
    </div>
</div>

</body>
</html>
