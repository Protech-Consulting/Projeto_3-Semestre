function FinalizarPedido(total){
	alert("Pedido Finalizado!!!")
	fetch(`http://localhost:8081/PizzariaCalabresos/finalizarPedido?totalPedido=${total}`,{
		method: 'GET',
        headers: {
            'Content-Type': 'application/json',
            'Accept': 'application/json'
        }
	})
}