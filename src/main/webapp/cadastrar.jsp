<%--
  Created by IntelliJ IDEA.
  User: plnhs
  Date: 12/07/2024
  Time: 21:36
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<!DOCTYPE html>
<html>
<head>
    <title>Cadastrar Livro</title>
    <link rel="stylesheet" type="text/css" href="css/styles.css">
</head>
<body>
<header>
    <h1>Cadastrar Livro</h1>
</header>
<nav>
    <a href="index.jsp">Home</a>
    <a href="LivrosController?action=listar">Listar Livros</a>
</nav>
<div class="container">
    <form action="LivrosController?action=cadastrar" method="post">
        <label for="isbn">ISBN:</label>
        <input type="text" id="isbn" name="isbn" required>

        <label for="nome">Nome:</label>
        <input type="text" id="nome" name="nome" required>

        <label for="categoria">Categoria:</label>
        <input type="text" id="categoria" name="categoria">

        <label for="quantidade">Quantidade:</label>
        <input type="number" id="quantidade" name="quantidade" required>

        <input type="submit" value="Cadastrar Livro">
    </form>
</div>
</body>
</html>
