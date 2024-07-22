<%--
  Created by IntelliJ IDEA.
  User: plnhs
  Date: 12/07/2024
  Time: 21:31
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
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

<div class="table-wrapper">
    <h2>Lista de Livros</h2>
    <c:if test="${not empty sessionScope.user}">
        <a href="LivrosController?action=cadastrar">Cadastrar Livro</a>
    </c:if>
    <div class="table-container">
        <table class="table table-striped table-bordered">
            <thead >
            <tr>
                <th scope="col">ISBN</th>
                <th scope="col">Nome</th>
                <th scope="col">Categoria</th>
                <th scope="col">Quantidade</th>
                <c:if test="${not empty sessionScope.user}">
                    <th>Ações</th>
                </c:if>
            </tr>
            </thead>
            <tbody>
            <c:forEach var="livro" items="${listaLivros}">
                <tr>
                    <td>${livro.isbn}</td>
                    <td>${livro.nome}</td>
                    <td>${livro.categoria}</td>
                    <td>${livro.quantidade}</td>
                    <c:if test="${not empty sessionScope.user}">
                        <td>
                            <a href="LivrosController?action=editar&isbn=${livro.isbn}">Editar</a>
                            <a href="LivrosController?action=deletar&isbn=${livro.isbn}" onclick="return confirm('Tem certeza que deseja deletar este livro?');">Deletar</a>
                        </td>
                    </c:if>
                </tr>
            </c:forEach>
            </tbody>
        </table>
    </div>
</div>
</body>
</html>
