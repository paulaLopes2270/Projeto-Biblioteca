<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
  <meta charset="UTF-8">
  <title>Edição de Usuário</title>
  <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css" integrity="sha384-MCw98/SFnGE8fJT3GXwEOngsV7Zt27NXFoaoApmYm81iuXoPkFOJwJ8ERdknLPMO" crossorigin="anonymous">
</head>
<body>
<h1>Edição de Usuário</h1>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<%-- Mostra mensagens de erro --%>
<%@ include file="mensagemErro.jsp" %>

<form action="UsuariosController?action=editar" method="post">
  <input type="hidden" name="id" value="${usuario.id}">

  <label for="nome">Nome:</label>
  <input type="text" id="nome" name="nome" value="${usuario.nome}" required><br><br>

  <label for="email">Email:</label>
  <input type="email" id="email" name="email" value="${usuario.email}" required><br><br>

  <label for="senha">Nova Senha:</label>
  <input type="password" id="senha" name="senha"><br><br>

  <button type="submit">Salvar</button>
</form>

<p><a href="UsuariosController">Voltar para Listagem</a></p>
</body>
</html>
