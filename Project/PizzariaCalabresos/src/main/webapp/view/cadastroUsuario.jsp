<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-QWTKZyjpPEjISv5WaRU9OFeRpok6YctnYmDr5pNlyT2bRjXh0JMhjY6hW+ALEwIH" crossorigin="anonymous">
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h1 class="font-weight-bold text-center">Cadastro Usuario</h1>
	<form action="../cadastrarUsuario" method="POST" class="text-center">
		<div class="d-inline-grid shadow-lg p-3 mb-5 bg-white rounded">
		<input type="text" placeholder="Digite seu Nome:" class="card mx-3 my-2 shadow">
		<input type="text" placeholder="Digite seu Usuario:" class="card mx-3 my-2 shadow">
		<input type="password" placeholder="Digite sua Senha:" class="card mx-3 my-2 shadow">
		<input type="password" placeholder="Confirme sua Senha:" class="card mx-3 my-2 shadow">
		<button class="btn btn-primary">Cadastrar</button>
		</div>
	</form>
</body>
</html>