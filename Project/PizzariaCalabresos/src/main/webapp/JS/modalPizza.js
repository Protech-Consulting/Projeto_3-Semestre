var quantidade = 0;
var sacola = 0;
function abrirModal(id) {
	quantidade = 1;
	modal = document.querySelector(".modalPizza")
	console.log(modal)
	modal.classList.remove("closed");
	modal.classList.add("open")
	fetch(`http://localhost:8081/PizzariaCalabresos/consultarPorIdPizza?txtIdPizza=${id}`, {
		
		method: 'GET',
	})
		.then(function(response) { // O response é convertido para 'json' para implementar no Javascript
			response.json()
				.then(function(data) {
					modal.innerHTML = ""
					console.log(data)
					data.map((item) => {
						console.log(item.nome_Pizza)
						modal.innerHTML += `
		<button id="botao-fechar-modal" onClick="fecharModal()"></button>
		<div id="adicionar-pizzas-modal">
			<div class="container">
                <div class="bg-$gray-100 p-3 px-5 rounded text-center d-flex flex-column align-items-center"
                    style="background-color: #F2F2F2; box-shadow: #0004 0 9px 5.1px;">
                                   
		                    <img src="${item.caminho_img_Pizza}" alt="Imagem de uma Pizza" width="270" style="border-radius: .7em;">
		                    <h2>${item.nome_Pizza}</h2>
	                           
	                    <div class="mt-0" style="width:65%;">
		                    <h4 class="text-center py-1 px-2"
	                        style="background-color: #860000; border-radius: 10em; color: #fff; font-size: 1.2em; margin: 1.2em 25%;">${item.tipo_Pizza}</h4>
		                    <p class="text-center">${item.descricao_Pizza}</p>                    
                    	</div>

                    
                    <h2 class="mb-2">R$${item.valor_Pizza}</h2>
					<div class="quantidade mb-3"> 
						<p style="font-size:1.5em;">Quantidade</p>
						<div class="d-flex justify-content-center gap-4 align-items-center">
							<button type="button" class="btn btn-outline-secondary" onClick="subtrair()">-</button>
							<p class="mt-2" style="font-size:1.6em;" id=text-quantidade-valor>1</p>
							<button type="button" class="btn btn-primary" onClick="adicionar()">+</button>						
						</div>
					</div>
					<button name="btn-confira" onClick="botaoComprar(${item.id_Pizza})" class="btn btn-danger mb-4" value="1" style="font-size:1.7em;">Comprar</button>
				</div>
			</div>
		</div>`;

					})
				});
		})

}
function fecharModal() {
	console.log("a")
	modal = document.querySelector(".modalPizza")
	console.log(modal)
	modal.classList.remove("open")
	modal.classList.add("closed")
}
function adicionar(){
	textQuantidade = document.querySelector("#text-quantidade-valor")
	quantidade+=1
	textQuantidade.innerHTML = quantidade
}
function subtrair(){
	textQuantidade = document.querySelector("#text-quantidade-valor")
	if(quantidade>=1){
		quantidade-=1
	}
	textQuantidade.innerHTML = quantidade
}
function botaoComprar(id){
	quantidadeSacola = document.querySelector("#quantidade-pedido")
	console.log("Abacaxi")
	console.log(id)
	fetch(`http://localhost:8081/PizzariaCalabresos/cadastrarPedido?txtIdPizza=${id}&txtQuantidadePizza=${quantidade}`,{
		method: 'GET'
		})
	sacola+=1
	quantidadeSacola.innerHTML = sacola
	fecharModal()
}