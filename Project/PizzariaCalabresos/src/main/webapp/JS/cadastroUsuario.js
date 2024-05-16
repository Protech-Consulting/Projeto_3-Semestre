inputCep = document.querySelector("#cep-usuario")
console.log(inputCep)

inputCep.addEventListener("keyup", function() {
	inputRua = document.querySelector('#rua-usuario')
	inputBairro = document.querySelector('#bairro-usuario')
	inputComplemento = document.querySelector('#complemento-usuario')
	console.log(inputRua)
	fetch(`https://viacep.com.br/ws/${inputCep.value}/json/`,{
		method: 'GET',
		mode: 'cors',
        headers: {
            'Content-Type': 'application/json',
            'Accept': 'application/json'
        },
		})
		.then(function (response) { // O response é convertido para 'json' para implementar no Javascript
            response.json()
                .then(function (data) {
				console.log(data.logradouro)
				inputRua.value=data.logradouro
				inputBairro.value=data.bairro
				console.log(data.complemento)
				inputComplemento.value=data.complemento
                });
			})
			 .catch(error => inputRua.value='Dados nao encontrados');
})
