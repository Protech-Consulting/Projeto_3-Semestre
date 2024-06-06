select = document.querySelector('#selectTipoPizza')
pesquisa = document.querySelector('#txtPesquisa')
divPizzas = document.querySelector('.pizzas')

pesquisaList = document.querySelector('#datalistOptions');
pesquisa.addEventListener("keyup", function() {
	fetch(`http://localhost:8081/PizzariaCalabresos/consultarPesquisaPizza?txtPesquisaPizza=${pesquisa.value}`,{
		method: 'GET'
		})
		.then(function (response) { // O response é convertido para 'json' para implementar no Javascript
            response.json()
                .then(function (data) {
				pesquisaList.innerHTML = ""
				divPizzas.innerHTML = ""
				console.log(data)
                   data.map((item)=>{
					   console.log(item.nome_Pizza)
					   pesquisaList.innerHTML += `<option value="${item.nome_Pizza}">`
					   divPizzas.innerHTML+=`<div class="card mx-3 my-4 shadow" style="width: 18rem">
			<img src="${item.caminho_img_Pizza}"
				class="card-img-top">
			<div class="card-body d-flex align-items-center flex-column p-3">
				<h5 class="card-title text-center" style="font-size:1.8em;">${item.nome_Pizza}</h5>
				<h4 class="text-center py-2 px-4" style="background-color: #860000; border-radius: 10em; color: #fff; font-size: 1.2em; margin: 1.2em 25%;">
				${item.tipo_Pizza}
				</h4>
				<div class="shadow p-3 mb-4 bg-white rounded" style="width:100%">
					<h6 class="">Ingredientes</h6>
					<p class="card-text">${item.descricao_Pizza}</p>
				</div>
				
				<div class="d-flex flex-column justify-content-end" style="height:100%">
					<h4 class="font-weight-bold text-center mb-4" style="font-size:2em">
						R$${item.valor_Pizza}0
					</h4>
					<button name="btn-confira"
						onClick="abrirModal(${item.id_Pizza})"
						class="btn btn-danger mb-4" value="${item.id_Pizza}" style="font-size:1.35em">Confira
					</button>
				</div>
			</div>
		</div>`
				   })
                });
			})
})

select.addEventListener("change", function() {
	console.log("Ativado!")
	console.log(select.value)
	const tipo = select.value;
	fetch(`http://localhost:8081/PizzariaCalabresos/consultarPorTipoPizza?txtTipoPizza=${tipo}`,{
		method: 'GET'
		})
		.then(function (response) { // O response é convertido para 'json' para implementar no Javascript
            response.json()
                .then(function (data) {
					pesquisaList.innerHTML = ""
					divPizzas.innerHTML = ""
                    console.log(data);
                    data.map((item)=>{
					   console.log(item.nome_Pizza)
					   divPizzas.innerHTML+=`<div class="card mx-3 my-4 shadow" style="width: 18rem">
			<img src="${item.caminho_img_Pizza}"
				class="card-img-top">
			<div class="card-body d-flex align-items-center flex-column p-3">
				<h5 class="card-title text-center" style="font-size:1.8em;">${item.nome_Pizza}</h5>
				<h4 class="text-center py-2 px-4" style="background-color: #860000; border-radius: 10em; color: #fff; font-size: 1.2em; margin: 1.2em 25%;">
				${item.tipo_Pizza}
				</h4>
				<div class="shadow p-3 mb-4 bg-white rounded" style="width:100%">
					<h6 class="">Ingredientes</h6>
					<p class="card-text">${item.descricao_Pizza}</p>
				</div>
				
				<div class="d-flex flex-column justify-content-end" style="height:100%">
					<h4 class="font-weight-bold text-center mb-4" style="font-size:2em">
						R$${item.valor_Pizza}0
					</h4>
					<button name="btn-confira"
						onClick="abrirModal(${item.id_Pizza})"
						class="btn btn-danger mb-4" value="${item.id_Pizza}" style="font-size:1.35em">Confira
					</button>
				</div>
			</div>
		</div>`
				   })
                });
			})
})
