console.log("a")
botao = document.getElementById("btn-confira")
console.log(botao)

function realizarPedido(id_pizza){
	fetch(`http://localhost:8081/PizzariaCalabresos/cadastrarPedido?txtIdPizza=${id_pizza}`,{
		method: 'GET'
		})
		console.log("OK")
}