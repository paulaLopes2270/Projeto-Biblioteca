<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
  <meta charset="UTF-8">
  <title>Edição de Usuário</title>
  <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css" integrity="sha384-MCw98/SFnGE8fJT3GXwEOngsV7Zt27NXFoaoApmYm81iuXoPkFOJwJ8ERdknLPMO" crossorigin="anonymous">
  <style>
    .form-container {
      width: 60%;
      margin: 0 auto;
      max-width: 800px; /* limite de largura máxima */
      margin-top: 3rem;
    }
    .nav-item a {
      color: #007BFF; /* Cor padrão dos links */
    }
  </style>
</head>
<body>
<nav class="navbar navbar-light bg-light">
  <a class="navbar-brand" href="#">
    <img src="https://i.ibb.co/FD5vTcV/logo.png" width="220" height="220" alt="Bibliotech">
  </a>
  <ul class="nav justify-content-end">
    <li class="nav-item">
      <a class="nav-link" href="UsuariosController?action=listar">Listar Usuários</a>
    </li>
  </ul>
</nav>

<div class="form-container">
  <h1>Alterar Usuário</h1>

  <%-- Mostra mensagens de erro --%>
  <%@ include file="mensagemErro.jsp" %>

  <form action="UsuariosController?action=editar" method="post" class="needs-validation" novalidate>
    <input type="hidden" name="id" value="${usuario.id}">

    <div class="form-group">
      <label for="nome">Nome:</label>
      <input type="text" class="form-control" id="nome" name="nome" value="${usuario.nome}" required>
      <div class="invalid-feedback">
        Por favor, insira o nome.
      </div>
    </div>

    <div class="form-group">
      <label for="email">Email:</label>
      <input type="email" class="form-control" id="email" name="email" value="${usuario.email}" required>
      <div class="invalid-feedback">
        Por favor, insira um e-mail válido.
      </div>
    </div>

    <div class="form-group">
      <label for="senha">Nova Senha:</label>
      <input type="password" class="form-control" id="senha" name="senha" required>
    </div>

    <button type="submit" class="btn btn-primary">Salvar</button>
  </form>

  <p class="mt-3"><a href="UsuariosController">Voltar para Listagem</a></p>
</div>

<script>
  // JavaScript para habilitar validação de formulário do Bootstrap
  (function() {
    'use strict';
    window.addEventListener('load', function() {
      var forms = document.getElementsByClassName('needs-validation');
      Array.prototype.filter.call(forms, function(form) {
        form.addEventListener('submit', function(event) {
          if (form.checkValidity() === false) {
            event.preventDefault();
            event.stopPropagation();
          }
          form.classList.add('was-validated');
        }, false);
      });
    }, false);
  })();
</script>

</body>
</html>
