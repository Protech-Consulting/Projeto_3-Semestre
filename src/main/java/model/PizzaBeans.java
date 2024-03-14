package model;

public class PizzaBeans {
	//Classe Pizza 
	private int id_Pizza;
	private String nome_Pizza;
	private String caminho_img_Pizza;
	private String descricao_Pizza;
	private double valor_Pizza;
	private boolean estoque_Pizza;
	
	public int getId_Pizza() {
		return id_Pizza;
	}
	public void setId_Pizza(int id_Pizza) {
		this.id_Pizza = id_Pizza;
	}
	public String getNome_Pizza() {
		return nome_Pizza;
	}
	public void setNome_Pizza(String nome_Pizza) {
		this.nome_Pizza = nome_Pizza;
	}
	public String getCaminho_img_Pizza() {
		return caminho_img_Pizza;
	}
	public void setCaminho_img_Pizza(String caminho_img_Pizza) {
		this.caminho_img_Pizza = caminho_img_Pizza;
	}
	public String getDescricao_Pizza() {
		return descricao_Pizza;
	}
	public void setDescricao_Pizza(String descricao_Pizza) {
		this.descricao_Pizza = descricao_Pizza;
	}
	public double getValor_Pizza() {
		return valor_Pizza;
	}
	public void setValor_Pizza(double valor_Pizza) {
		this.valor_Pizza = valor_Pizza;
	}
	public boolean isEstoque_Pizza() {
		return estoque_Pizza;
	}
	public void setEstoque_Pizza(boolean estoque_Pizza) {
		this.estoque_Pizza = estoque_Pizza;
	}
}
