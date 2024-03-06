<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<form action = "cadastroPizza.jsp" method = "POST" >
		<input type="text" name="nomePizzatxt"  placeholder = "Nome Pizza" >
		<input type="text" name="descricaoPizzatxt"  placeholder = "Descrição" >
		<input type="file" size="50" name="txtCaminhoimagem" title="Clique para procurar arquivo" >
		<input type="number" name="valorPizza"  placeholder = "Valor" >
		<button>Enviar</button>
	</form>
</body>
</html>