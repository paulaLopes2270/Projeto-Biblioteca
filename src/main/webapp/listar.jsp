<%--
  Created by IntelliJ IDEA.
  User: plnhs
  Date: 12/07/2024
  Time: 23:09
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html>
<head>
    <title>Lista de Livros</title>
    <link rel="stylesheet" type="text/css" href="css/styles.css">
</head>
<body>
<h1>Lista de Livros</h1>
<table>
    <tr>
        <th>ISBN</th>
        <th>Título</th>
        <th>Categoria</th>
        <th>Quantidade</th>
        <th>Ações</th>
    </tr>
    <c:forEach var="livro" items="${livros}">
        <tr>
            <td>${livro.isbn}</td>
            <td>${livro.titulo}</td>
            <td>${livro.categoria}</td>
            <td>${livro.quantidade}</td>
            <td>
                <a href="LivroServlet?action=mostrarAlteracao&isbn=${livro.isbn}">Alterar</a>
                <a href="LivroServlet?action=deletar&isbn=${livro.isbn}">Deletar</a>
            </td>
        </tr>
    </c:forEach>
</table>
<a href="index.jsp">Voltar</a>
</body>
</html>
