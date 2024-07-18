<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
  <meta charset="UTF-8">
  <title>Cadastro de Usuário</title>
</head>
<body>
<h1>Cadastro de Usuário</h1>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<%-- Mostra mensagens de erro --%>
<%@ include file="mensagemErro.jsp" %>

<form action="UsuariosController?action=cadastrar" method="post">
  <label for="nome">Nome:</label>
  <input type="text" id="nome" name="nome" required><br><br>

  <label for="email">Email:</label>
  <input type="email" id="email" name="email" required><br><br>

  <label for="senha">Senha:</label>
  <input type="password" id="senha" name="senha" required><br><br>

  <button type="submit">Cadastrar</button>
</form>

<p><a href="UsuariosController">Voltar para Listagem</a></p>
</body>
</html>
