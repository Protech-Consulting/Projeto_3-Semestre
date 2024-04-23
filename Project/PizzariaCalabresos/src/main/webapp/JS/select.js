select = document.querySelector('#selectTipoPizza')
pesquisa = document.querySelector('#txtPesquisa')

pesquisa.addEventListener("keyup", function() {
	fetch(`http://localhost:8081/PizzariaCalabresos/consultarPesquisaPizza?txtPesquisaPizza=${pesquisa.value}`,{
		method: 'GET'
		})
		.then(function (response) { // O response é convertido para 'json' para implementar no Javascript
            response.json()
                .then(function (data) {
                    console.log(data);
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
