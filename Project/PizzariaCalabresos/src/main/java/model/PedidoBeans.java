package model;

public class PedidoBeans {
	private int id_tbPedido;
	private int id_pizza;
	private String nome_pizza;
	private String caminho_img;
	private int quantidade;
	private double valor;
	private int id_pedido_cliente;

	public PedidoBeans(int id_tbPedido, int id_pizza, String nome_pizza, String caminho_img, int quantidade,
			double valor, int id_pedido_cliente) {
		super();
		this.id_tbPedido = id_tbPedido;
		this.id_pizza = id_pizza;
		this.nome_pizza = nome_pizza;
		this.caminho_img = caminho_img;
		this.quantidade = quantidade;
		this.valor = valor;
		this.id_pedido_cliente = id_pedido_cliente;
	}
	public PedidoBeans() {
		super();
		// TODO Auto-generated constructor stub
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
	public String getNome_pizza() {
		return nome_pizza;
	}
	public void setNome_pizza(String nome_pizza) {
		this.nome_pizza = nome_pizza;
	}
	public String getCaminho_img() {
		return caminho_img;
	}
	public void setCaminho_img(String caminho_img) {
		this.caminho_img = caminho_img;
	}
	public int getQuantidade() {
		return quantidade;
	}
	public void setQuantidade(int quantidade) {
		this.quantidade = quantidade;
	}
	public double getValor() {
		return valor;
	}
	public void setValor(double valor) {
		this.valor = valor;
	}
	public int getId_pedido_cliente() {
		return id_pedido_cliente;
	}
	public void setId_pedido_cliente(int id_pedido_cliente) {
		this.id_pedido_cliente = id_pedido_cliente;
	}
}