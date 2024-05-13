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
					   divPizzas.innerHTML+=`<div class="card mx-3 my-4 shadow pizzas" style="width: 18rem">
												<img src="${item.caminho_img_Pizza}" class="card-img-top">
													<div class="card-body">
														<p>${item.id_Pizza}</p>
														<h5 class="card-title">${item.nome_Pizza}</h5>
														<div class="shadow-lg p-3 mb-5 bg-white rounded">
														<h6 class="">Ingredientes</h6>
														<br>
														<p class="card-text">${item.descricao_Pizza}</p>
														</div>
														<h4 class="font-weight-bold text-center">Valor: R$ ${item.valor_Pizza}</h4>
														${item.estoque_Pizza}<br>
														${item.tipo_Pizza}<br>
														<br> <a href="#" class="btn btn-danger">Confira</a>
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
                    console.log(data);
                });
			})
})
