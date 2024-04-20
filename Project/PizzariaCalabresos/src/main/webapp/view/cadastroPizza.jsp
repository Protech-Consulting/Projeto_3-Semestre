<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<form action="../cadastrarPizza" method="post">
		<input type="text" name="txtNomePizza" placeholder="Digite o Nome da Pizza">
		<input type="text" name="txtCaminhoImgPizza" placeholder="Digite o Caminho da Imagem da Pizza">
		<input type="text" name="txtDescricaoPizza" placeholder="Digite a Descrição da Pizza">
		<input type="text" name="txtValorPizza" placeholder="Digite o Valor da Pizza">
		<input type="checkbox" name="txtEstoquePizza" value =TRUE placeholder="Digite o Estoque da Pizza">
		<input type="text" name="txtTipoPizza" placeholder="Digite o Tipo da Pizza">
		<button>Enviar</button>
	</form>
</body>
</html>