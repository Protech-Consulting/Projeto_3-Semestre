package model;

public class PedidoClienteBeans {
	private int id_Pedido_Cliente;
	private int id_Usuario;
	private String hora_Pedido;
	private int status_Pedido;
	private double valor_Total;
	private String tipo_Pagamento;
	private boolean pagamento;
	
	public PedidoClienteBeans() {
		super();
		// TODO Auto-generated constructor stub
	}
	
	public PedidoClienteBeans(int id_Pedido_Cliente, int id_Usuario, String hora_Pedido, int status_Pedido,
			double valor_Total, String tipo_Pagamento, boolean pagamento) {
		super();
		this.id_Pedido_Cliente = id_Pedido_Cliente;
		this.id_Usuario = id_Usuario;
		this.hora_Pedido = hora_Pedido;
		this.status_Pedido = status_Pedido;
		this.valor_Total = valor_Total;
		this.tipo_Pagamento = tipo_Pagamento;
		this.pagamento = pagamento;
	}

	public int getId_Pedido_Cliente() {
		return id_Pedido_Cliente;
	}
	public void setId_Pedido_Cliente(int id_Pedido_Cliente) {
		this.id_Pedido_Cliente = id_Pedido_Cliente;
	}
	public int getId_Usuario() {
		return id_Usuario;
	}
	public void setId_Usuario(int id_Usuario) {
		this.id_Usuario = id_Usuario;
	}
	public String getHora_Pedido() {
		return hora_Pedido;
	}
	public void setHora_Pedido(String hora_Pedido) {
		this.hora_Pedido = hora_Pedido;
	}
	public int getStatus_Pedido() {
		return status_Pedido;
	}
	public void setStatus_Pedido(int status_Pedido) {
		this.status_Pedido = status_Pedido;
	}
	public double getValor_Total() {
		return valor_Total;
	}
	public void setValor_Total(double valor_Total) {
		this.valor_Total = valor_Total;
	}
	public String getTipo_Pagamento() {
		return tipo_Pagamento;
	}
	public void setTipo_Pagamento(String tipo_Pagamento) {
		this.tipo_Pagamento = tipo_Pagamento;
	}
	public boolean isPagamento() {
		return pagamento;
	}
	public void setPagamento(boolean pagamento) {
		this.pagamento = pagamento;
	} 
}
