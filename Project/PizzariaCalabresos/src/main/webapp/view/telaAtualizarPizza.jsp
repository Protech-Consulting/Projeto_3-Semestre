<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="UTF-8"%>
<%@ page import="model.PizzaBeans"%>
<%@ page import="java.util.ArrayList"%>
<!DOCTYPE html>
<html lang="pt-br">

<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>Cadastro Pizza | Calabreso's</title>
    <link rel="shortcut icon" href="imgs/pizza.png" type="image/x-icon">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet"
        integrity="sha384-QWTKZyjpPEjISv5WaRU9OFeRpok6YctnYmDr5pNlyT2bRjXh0JMhjY6hW+ALEwIH" crossorigin="anonymous">
    
    <script defer src="JS/cadastroPizza.js"></script>
</head>

<body>

    <!-- NAV BAR -->
    <nav class="navbar navbar-expand-lg px-3">
        <div class="container-fluid">
            <a class="navbar-brand d-flex align-items-center" href="#">
                <img src="imgs/calabreso's.jpeg" alt="Logo dos calabreso's" width="85em">
                <p style="color: #E32323; font-weight: 700; font-size: 1.3em; margin: 0.1em 0 0 .2em;">Calabreso's</p>
            </a>
        </div>
        <span class="navbar-text d-flex align-items-center px-4">
            <img src="imgs/sacola.png" alt="Imagem de uma sacola" width="50em">
        </span>
    </nav>


    <!-- MAIN -->
    <main>
    	<%
		ArrayList<PizzaBeans> listaPizza = (ArrayList<PizzaBeans>) request.getAttribute("pizzas");
		for (int i = 0; i < listaPizza.size(); i++) {%>
        <h1 class="text-center mb-4">Atualizar Pizzas</h1>

        <div class="container">

            <!-- Linha 1 -->
            <div class="row">

                <!-- Coluna 1 -->
                <div class="col-6">
                    <!-- Formulário para Cadastrar -->
                    <form class="d-grid gap-4" action="atualizarPizza" method="post">
						<input disabled name=txtIdPizza value="<%=listaPizza.get(i).getId_Pizza()%>"></input>
                        <!-- Nome Pizza -->
                        <div class="form-group">
                            <label for="nome-pizza" class="my-2" style="font-size: 1.5em;">Nome da Pizza</label>
                            <input type="text" class="form-control" name="txtNomePizza" id="nome-pizza" value="<%= listaPizza.get(i).getNome_Pizza()%>"
                                style="font-size: 1.2em;">
                        </div>

                        <!-- Imagem Pizza -->
                            <div class="form-group">
                                <p style="font-size: 1.5em;">Imagem da Pizza</p>
                                <label for="imagem-pizza" class="btn btn-danger mb-4"
                                    style="font-size: 1.2em;">Selecionar</label>
                                <input type="file" name="txtCaminhoImgPizza" class="form-control-file d-none" id="imagem-pizza">
                            </div>

                        <!-- Tipo Pizza -->
                        <div class="form-group">
                            <label for="tipo-pizza" class="mb-2" style="font-size: 1.5em;">Tipo da Pizza</label>
                            <select name="txtTipoPizza" class="form-control" id="select-tipo-pizza"
                                style="font-size: 1.2em;">
                                <option value="<%=listaPizza.get(i).getTipo_Pizza()%>" selected><%=listaPizza.get(i).getTipo_Pizza()%></option>
                                <option value="Doce">Doce</option>
                                <option value="Salgada">Salgada</option>
                            </select>
                        </div>

                        <!-- Descrição Pizza -->
                        <div class="form-group">
                            <label for="descricao-pizza" class="mb-2 mt-4" style="font-size: 1.5em;">Descrição da
                                Pizza</label>
                            <textarea class="form-control" id="descricao-pizza" name="txtDescricaoPizza" rows="3" value="<%=listaPizza.get(i).getDescricao_Pizza()%>"
                                style="font-size: 1.2em;"></textarea>
                        </div>

                        <!-- Valor Pizza -->
                        <div class="form-group">
                            <label for="valor-pizza" class="mb-2 mt-4" style="font-size: 1.5em;">Valor da Pizza</label>
                            <input type="number" name="txtValorPizza" class="form-control" id="valor-pizza" value="<%=listaPizza.get(i).getValor_Pizza()%>"
                                style="font-size: 1.2em;">
                             <p style="font-size: 1.5em;" class="mt-4">Em Estoque</p>
                        	<%if(listaPizza.get(i).isEstoque_Pizza()== true){%>
									<input type=checkbox name=txtEstoquePizza value=True checked>
								<% }else{%>
									<input type=checkbox name=txtEstoquePizza value=True>
								<%} %>
                        </div>


                        <!-- Linha 2 -->
                        <div class="text-center my-5">
                                <!-- Botão Cadastrar Pizza -->
                                <button type="submit" class="btn btn-danger" style="font-size: 1.6em;">Cadastrar Pizza</button>
                        </div>

                    </form>
                    <%}%>
                </div>

                <!-- Coluna 2 (espaçamento) -->
                <div class="col-2">
                </div>

                <!-- Coluna 3 -->
                <div class="col-4 text-center">
                    <!-- Ilustração Pizza -->
                    <div class="bg-$gray-100 p-3 rounded"
                        style="background-color: #F2F2F2; box-shadow: #0004 0 9px 5.1px;">
                        <!-- Imagem Pizza -->
                        <img src="imgs/pizza.png" alt="Imagem de uma Pizza" width="220em">
                        <!-- Nome Pizza -->
                        <h2 id="nome-pizza-text">Nome da Pizza</h2>
                        <!-- Tipo Pizza -->
                        <h4 id="tipo-pizza-text" class="text-center py-1"
                            style="background-color: #860000; border-radius: 10em; color: #fff; font-size: 1.2em; margin: 1.2em 5em;">
                            Tipo Pizza</h4>
                        <!-- Descrição Pizza -->
                        <p id="descricao-pizza-text" class="text-start mx-4">Lorem ipsum dolor sit amet consectetur, adipisicing elit. Autem,
                            voluptates.</p>
                        <!-- Preço Pizza -->
                        <h2 id="valor-pizza-text" class="mb-4">R$0,00</h2>
                    </div>
                </div>

            </div>


        </div>

    </main>

    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js"
        integrity="sha384-YvpcrYf0tY3lHB60NNkmXc5s9fDVZLESaAA55NDzOxhy9GkcIdslK1eN7N6jIeHz"
        crossorigin="anonymous"></script>
</body>

</html>