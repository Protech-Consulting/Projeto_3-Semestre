<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="model.PedidoBeans"%>
<%@ page import="java.util.ArrayList"%>
<!doctype html>
<html lang="pt-br">

<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>Carrinho | Calabreso's</title>
    <link rel="shortcut icon" href="../imgs/pizza.png" type="image/x-icon">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet"
        integrity="sha384-QWTKZyjpPEjISv5WaRU9OFeRpok6YctnYmDr5pNlyT2bRjXh0JMhjY6hW+ALEwIH" crossorigin="anonymous">
	<link href="CSS/telaPedido.css" rel="stylesheet">
	<script defer src="./JS/PagamentoPedido.js"></script>
</head>
<body>

    <!-- NAV BAR -->
    <nav class="navbar navbar-expand-lg px-3">
        <div class="container-fluid">
            <a class="navbar-brand d-flex align-items-center" href="#">
                <img src="imgs/calabreso's.jpeg" alt="Logo dos calabreso's" width="85em">
                <p style="color: #E32323; font-weight: 700; font-size: 1.3em; margin: 0.1em 0 0 .2em;">Calabreso's</p>
            </a>
            <span class="navbar-text d-flex align-items-center px-4">
                <img src="imgs/sacola.png" alt="Imagem de uma sacola" width="50em">
            </span>
        </div>
    </nav>
    <div class="modal-carrinho">
    <div class="container my-5">
        <div class="text-center mb-4">

        </div>
        <h1 class="text-center">Carrinho de Compras</h1>
        <br>
        <%
        double total=0;
        int quantidade;
		ArrayList<PedidoBeans> listaPedido = (ArrayList<PedidoBeans>) request.getAttribute("pedidos");
		for (int i = 0; i < listaPedido.size(); i++) {
			quantidade = listaPedido.get(i).getQuantidade();
			total+=listaPedido.get(i).getValor()*quantidade;
		%>
		
        <div class="cart-wrapper">
            <div class="cart-item">
                <img src="<%=listaPedido.get(i).getCaminho_img()%>" alt="Pizza Portuguesa">
                <div class="info-pizza">
                    <div class="nome-pizza">
                        <h3><%=listaPedido.get(i).getNome_pizza()%></h3>
                    </div>
                    <p class="preco-pizza mb-0">R$<%=listaPedido.get(i).getValor()%></p>
                    <div class="quantidade-pizza">
                        <p><%=listaPedido.get(i).getQuantidade()%></p>
                    </div>
                </div>
            </div>
            <button class="btn btn-danger py-2">Remover</button>
        </div>
        <%
		}
		%>
        <br>
        <div class="text-center mt-4">
            <h2>Total: R$<%=total%></h2>
            <br>
            <button class="btn btn-primary" onClick="FinalizarPedido(<%=total%>)" style="font-size: 1.5em;">Finalizar Compra</button>
        </div>
    </div>
</div>

    <script src="https://code.jquery.com/jquery-3.5.1.slim.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.5.4/dist/umd/popper.min.js"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
</body>

</html>