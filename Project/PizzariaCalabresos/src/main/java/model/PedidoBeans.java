package model;

public class PedidoBeans {

	private int id_tbPedido;
	private int id_pizza;
	private int id_pedido_cliente;
	private int quantidade;
	
	public PedidoBeans() {
		super();
		// TODO Auto-generated constructor stub
	}
	
	public PedidoBeans(int id_tbPedido, int id_pizza, int id_pedido_cliente, int quantidade) {
		super();
		this.id_tbPedido = id_tbPedido;
		this.id_pizza = id_pizza;
		this.id_pedido_cliente = id_pedido_cliente;
		this.quantidade = quantidade;
	}

	public int getId_tbPedido() {
		return id_tbPedido;
	}
	public void setId_tbPedido(int id_tbPedido) {
		this.id_tbPedido = id_tbPedido;
	}
	public int getId_pizza() {
		return id_pizza;
	}
	public void setId_pizza(int id_pizza) {
		this.id_pizza = id_pizza;
	}
	public int getId_pedido_cliente() {
		return id_pedido_cliente;
	}
	public void setId_pedido_cliente(int id_pedido_cliente) {
		this.id_pedido_cliente = id_pedido_cliente;
	}
	public int getQuantidade() {
		return quantidade;
	}
	public void setQuantidade(int quantidade) {
		this.quantidade = quantidade;
	}
	
}
