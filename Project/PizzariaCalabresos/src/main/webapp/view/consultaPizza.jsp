<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page import="model.PizzaBeans"%>
<%@ page import="java.util.ArrayList"%>

<!DOCTYPE html>
<html>
<head>
<link href="CSS/consultaPizzaUsuario.css" rel="stylesheet">
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-QWTKZyjpPEjISv5WaRU9OFeRpok6YctnYmDr5pNlyT2bRjXh0JMhjY6hW+ALEwIH"
	crossorigin="anonymous">
<meta charset="UTF-8">
<title>Consulta Pizza</title>
<script defer src="./JS/select.js"></script>
<script defer src="./JS/button-pedido.js"></script>
<script defer src="./JS/modalPizza.js"></script>
</head>
<body>
		<div class="modalPizza closed">
	</div>
	<label for="exampleDataList" class="form-label">Datalist
		example</label>
	<input class="form-control" list="datalistOptions" id=txtPesquisa
		placeholder="Type to search...">
	<datalist id="datalistOptions">
	</datalist>
	<select class="form-select" aria-label="Default select example"
		id="selectTipoPizza">
		<option selected>Selecione</option>
		<option value="Doce">Doce</option>
		<option value="Salgada">Salgada</option>
		<option value="todas">Todos os tipos</option>
	</select>
	<div class="container d-flex flex-wrap pizzas">
		<%
		ArrayList<PizzaBeans> listaPizza = (ArrayList<PizzaBeans>) request.getAttribute("pizzas");
		for (int i = 0; i < listaPizza.size(); i++) {
		%>


		<div class="card mx-3 my-4 shadow" style="width: 18rem">
			<img src="<%=listaPizza.get(i).getCaminho_img_Pizza()%>"
				class="card-img-top">
			<div class="card-body">
				<p><%=listaPizza.get(i).getId_Pizza()%></p>
				<h5 class="card-title"><%=listaPizza.get(i).getNome_Pizza()%></h5>
				<div class="shadow-lg p-3 mb-5 bg-white rounded">
					<h6 class="">Ingredientes</h6>
					<br>
					<p class="card-text"><%=listaPizza.get(i).getDescricao_Pizza()%></p>
				</div>
				<h4 class="font-weight-bold text-center">
					Valor: R$
					<%=listaPizza.get(i).getValor_Pizza()%></h4>
				<%=listaPizza.get(i).isEstoque_Pizza()%>
				<br>
				<%=listaPizza.get(i).getTipo_Pizza()%>
				<br> <br>
				<button name="btn-confira"
					onClick="abrirModal(<%=listaPizza.get(i).getId_Pizza()%>)"
					class="btn btn-danger" value="<%=listaPizza.get(i).getId_Pizza()%>">Confira</button>
			</div>
		</div>
		<%
		}
		%>
	</div>
</body>
</html>