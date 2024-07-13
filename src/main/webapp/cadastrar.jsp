<%--
  Created by IntelliJ IDEA.
  User: plnhs
  Date: 12/07/2024
  Time: 23:08
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
<h1>Cadastrar Livro</h1>
<form action="LivroServlet?action=cadastrar" method="post">
    ISBN: <input type="text" name="isbn" required><br>
    Título: <input type="text" name="titulo" required><br>
    Categoria: <input type="text" name="categoria"><br>
    Quantidade: <input type="number" name="quantidade" required><br>
    <input type="submit" value="Cadastrar">
</form>
<a href="index.jsp">Voltar</a>
</body>
</html>