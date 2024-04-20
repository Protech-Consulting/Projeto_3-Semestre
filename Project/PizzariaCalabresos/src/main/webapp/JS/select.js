select = document.querySelector('#selectTipoPizza')

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
