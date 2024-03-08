package model;
//Criando Objeto e Getters e Setters
public class JavaBeans {
	private int id_Pizza;
	public int getId_Pizza() {
		return id_Pizza;
	}
	public void setId_Pizza(int id_Pizza) {
		this.id_Pizza = id_Pizza;
	}
	public String getNomePizza() {
		return nomePizza;
	}
	public void setNomePizza(String nomePizza) {
		this.nomePizza = nomePizza;
	}
	public String getDecricao_Pizza() {
		return decricao_Pizza;
	}
	public void setDecricao_Pizza(String decricao_Pizza) {
		this.decricao_Pizza = decricao_Pizza;
	}
	public String getCaminho_imgPizza() {
		return caminho_imgPizza;
	}
	public void setCaminho_imgPizza(String caminho_imgPizza) {
		this.caminho_imgPizza = caminho_imgPizza;
	}
	public String getValor_Pizza() {
		return valor_Pizza;
	}
	public void setValor_Pizza(String valor_Pizza) {
		this.valor_Pizza = valor_Pizza;
	}
	private String nomePizza;
	private String decricao_Pizza;
	private String caminho_imgPizza;
	private String valor_Pizza;

}
