function abrirModal(id) {
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
				<button onClick="fecharModal()">X</button><div class="container">
			<div class="row">
				<div class="col-md-3">
					<div class="card mx-3 my-4 shadow w-100">
						<img src="${item.caminho_img_Pizza}"
							class="card-img-top w-100">
					</div>
				</div>
				<div class="col-md-7">
					<div class="card-body w-100">
							<p>1</p>
							<h5 class="card-title">${item.nome_Pizza}</h5>
							<div class="shadow-lg p-3 mb-5 bg-white rounded">
								<h6 class="">Ingredientes</h6>
								<br>
								<p class="card-text">${item.descricao_Pizza}</p>
							</div>
							<h4 class="font-weight-bold text-center">Valor: R$ ${item.valor_Pizza}</h4>
							${item.tipo_Pizza}<br>
							<br> <br>
							<button name="btn-confira"
								onClick="realizarPedido()"
								class="btn btn-danger"
								value="1">Confira</button>
						</div>
				</div>
				<div class="col-md-2">
					<div class="quantidade my-4"> 
								<p>quantidade </p>
								<button>-</button>
								<span>1</span>
								<button>+</button>
							</div>
				</div>
			</div>
		</div>`
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