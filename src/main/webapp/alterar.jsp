<%--
  Created by IntelliJ IDEA.
  User: plnhs
  Date: 12/07/2024
  Time: 21:34
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<!DOCTYPE html>
<html>
<head>
    <title>Alterar Livro</title>
    <link rel="stylesheet" type="text/css" href="css/styles.css">
</head>
<body>
<header>
    <h1>Alterar Livro</h1>
</header>
<nav>
    <a href="index.jsp">Home</a>
    <a href="LivroServlet?action=listar">Listar Livros</a>
</nav>
<div class="container">
    <form action="LivroServlet?action=alterar" method="post">
        ISBN: <input type="text" name="isbn" value="${livro.isbn}" readonly><br>
        Título: <input type="text" name="titulo" value="${livro.titulo}" required><br>
        Categoria: <input type="text" name="categoria" value="${livro.categoria}"><br>
        Quantidade: <input type="number" name="quantidade" value="${livro.quantidade}" required><br>
        <input type="submit" value="Alterar">
    </form>
</div>
</body>
</html>
