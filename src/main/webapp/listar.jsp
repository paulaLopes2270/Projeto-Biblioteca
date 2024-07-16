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
<head>
    <title>Listar Livros</title>
</head>
<body>
<h2>Lista de Livros</h2>
<table border="1">
    <tr>
        <th>ISBN</th>
        <th>Nome</th>
        <th>Categoria</th>
        <th>Quantidade</th>
    </tr>
    <c:forEach var="livro" items="${listaLivros}">
        <tr>
            <td>${livro.isbn}</td>
            <td>${livro.nome}</td>
            <td>${livro.categoria}</td>
            <td>${livro.quantidade}</td>
        </tr>
    </c:forEach>
</table>
</body>
</html>

