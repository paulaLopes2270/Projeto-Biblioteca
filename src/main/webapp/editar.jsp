<%--
  Created by IntelliJ IDEA.
  User: plnhs
  Date: 12/07/2024
  Time: 21:34
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Alterar Livro</title>
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css" integrity="sha384-MCw98/SFnGE8fJT3GXwEOngsV7Zt27NXFoaoApmYm81iuXoPkFOJwJ8ERdknLPMO" crossorigin="anonymous">
    <link rel="stylesheet" type="text/css" href="css/styles.css">
</head>
<body>
<header>
    <h1>Alterar Livro</h1>
</header>
<nav>
    <a href="index.jsp">Home</a>
    <a href="LivrosController?action=listar">Listar Livros</a>
</nav>
<div class="container">
    <form action="LivrosController?action=editar" method="post">
        ISBN: <input type="text" name="isbn" value="${livro.isbn}" readonly><br>
        Nome: <input type="text" name="nome" value="${livro.nome}" required><br>
        Categoria: <input type="text" name="categoria" value="${livro.categoria}"><br>
        Quantidade: <input type="number" name="quantidade" value="${livro.quantidade}" required><br>
        <input type="submit" value="Alterar">
    </form>
</div>
</body>
</html>
