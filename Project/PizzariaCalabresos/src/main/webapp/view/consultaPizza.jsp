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
<title>Cardápio Calabresos</title>
<script defer src="./JS/select.js"></script>
<script defer src="./JS/button-pedido.js"></script>
<script defer src="./JS/modalPizza.js"></script>
</head>
<body>

		<div class="modalPizza closed">
	</div>
	
	<!-- NAV BAR -->
    <nav class="navbar navbar-expand-lg px-3">
        <div class="container-fluid">
            <a class="navbar-brand d-flex align-items-center" href="#">
                <img src="uploads/calabreso's.jpeg" alt="Logo dos calabreso's" width="85em">
                <p style="color: #E32323; font-weight: 700; font-size: 1.3em; margin: 0.1em 0 0 .2em;">Calabreso's</p>
            </a>
        </div>
        <span class="navbar-text d-flex align-items-center px-4">
            <img src="uploads/sacola.png" alt="Imagem de uma sacola" width="50em">
        </span>
    </nav>
    
    <!-- Cardápio -->
    <h1 class="text-center mb-4" style="font-size:4em">Cardápio</h1>
    
    <div class="d-flex align-items-center flex-column mb-2">
		<input class="form-control" list="datalistOptions" id=txtPesquisa
			placeholder="Pequise sua pizza..." style="width:40vw; font-size:1.3em;">
		<datalist id="datalistOptions">
			<option value="San Francisco">
			<option value="New York">
			<option value="Seattle">
			<option value="Los Angeles">
			<option value="Chicago">
		</datalist>
		
		<select class="form-select" aria-label="Default select example"
			id="selectTipoPizza" style="width:40vw; font-size:1.3em">
			<option selected>Todos os tipos</option>
			<option value="salgada">Salgada</option>
			<option value="doce">Doce</option>
		</select>
	</div>
	
	<div class="container d-flex flex-wrap justify-content-center pizzas">
		<%
		ArrayList<PizzaBeans> listaPizza = (ArrayList<PizzaBeans>) request.getAttribute("pizzas");
		for (int i = 0; i < listaPizza.size(); i++) {
		%>


		<div class="card mx-3 my-4 shadow" style="width: 18rem">
			<img src="<%=listaPizza.get(i).getCaminho_img_Pizza()%>"
				class="card-img-top">
			<div class="card-body d-flex align-items-center flex-column p-3">
				<h5 class="card-title text-center" style="font-size:1.8em;"><%=listaPizza.get(i).getNome_Pizza()%></h5>
				<h4 class="text-center py-2 px-4" style="background-color: #860000; border-radius: 10em; color: #fff; font-size: 1.2em; margin: 1.2em 25%;">
				<%=listaPizza.get(i).getTipo_Pizza()%>
				</h4>
				<div class="shadow p-3 mb-4 bg-white rounded" style="width:100%">
					<h6 class="">Ingredientes</h6>
					<p class="card-text"><%=listaPizza.get(i).getDescricao_Pizza()%></p>
				</div>
				
				<div class="d-flex flex-column justify-content-end" style="height:100%">
					<h4 class="font-weight-bold text-center mb-4" style="font-size:2em">
						R$<%=listaPizza.get(i).getValor_Pizza()%>0
					</h4>
					<button name="btn-confira"
						onClick="abrirModal(<%=listaPizza.get(i).getId_Pizza()%>)"
						class="btn btn-danger mb-4" value="<%=listaPizza.get(i).getId_Pizza()%>" style="font-size:1.35em">Confira
					</button>
				</div>
			</div>
		</div>
		<%
		}
		%>
	</div>
</body>
</html>