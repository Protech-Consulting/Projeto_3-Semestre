<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="UTF-8"%>
<%@ page import="model.PizzaBeans"%>
<%@ page import="java.util.ArrayList"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-QWTKZyjpPEjISv5WaRU9OFeRpok6YctnYmDr5pNlyT2bRjXh0JMhjY6hW+ALEwIH" crossorigin="anonymous">
</head>
<body>
	<form action="atualizarPizza" method="POST">
	<%
		ArrayList<PizzaBeans> listaPizza = (ArrayList<PizzaBeans>) request.getAttribute("pizzas");
		for (int i = 0; i < listaPizza.size(); i++) {%>
			<input disabled name=txtIdPizza value="<%=listaPizza.get(i).getId_Pizza()%>"></input>
			<br>
			<input type=text name=txtNomePizza value="<%= listaPizza.get(i).getNome_Pizza()%>">
			<br>
			<input type=text name=txtCaminhoImgPizza placeholder=Digite o Caminho da Imagem da Pizza value="<%=listaPizza.get(i).getCaminho_img_Pizza()%>">
			<br>
			<input type=text name=txtDescricaoPizza placeholder=Digite a Descrição da Pizza value="<%=listaPizza.get(i).getDescricao_Pizza()%>">
			<br>
			<input type=number name=txtValorPizza placeholder=Digite o Valor da Pizza value="<%=listaPizza.get(i).getValor_Pizza()%>">
			<br>
			<%if(listaPizza.get(i).isEstoque_Pizza()== true){%>
				<input type=checkbox name=txtEstoquePizza value=True checked>
			<% }else{%>
				<input type=checkbox name=txtEstoquePizza value=True>
			<%} %>
			<br>
			<input type=text name=txtTipoPizza value="<%=listaPizza.get(i).getTipo_Pizza()%>">;
			<br><br>
		<%}%>
		<button>Atualizar</button>
	</form>
</body>
</html>