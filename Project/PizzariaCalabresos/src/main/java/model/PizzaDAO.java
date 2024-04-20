package model;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

import conexao.conecta;
import model.PizzaBeans;

public class PizzaDAO {
//Cadastro de Pizza
	public void cadastrarPizza(PizzaBeans pizza) {
		try {
			Connection conn = conecta.getConnection();
			String sql = "insert into tbpizzas (nome_pizza,caminho_img_pizza,descricao_pizza,valor_pizza,estoque_pizza,tipo_pizza) values (?,?,?,?,?,?)";
			PreparedStatement stmt = conn.prepareStatement(sql);
			stmt.setString(1, pizza.getNome_Pizza());
			stmt.setString(2, pizza.getCaminho_img_Pizza());
			stmt.setString(3, pizza.getDescricao_Pizza());
			stmt.setDouble(4, pizza.getValor_Pizza());
			stmt.setBoolean(5, pizza.isEstoque_Pizza());
			stmt.setString(6, pizza.getTipo_Pizza());
			stmt.execute();
			stmt.close();
			conn.close();
			System.out.print("OK");
		} catch (Exception e) {
			System.out.print("ERRO: " + e);
		}
	}
//Consulta de pizzas por tipo
	public ArrayList<PizzaBeans> consultaTipoPizzas(String tipo) {
		System.out.print("OK");
		ArrayList<PizzaBeans> pizzas = new ArrayList<>();
		String sql = "select * from tbpizzas where tipo_pizza = ?";
		try {
			Connection conn = conecta.getConnection();
			System.out.print("OK");
			PreparedStatement stmt = conn.prepareStatement(sql);
			stmt.setString(1, tipo);
			ResultSet rs = stmt.executeQuery();
			while (rs.next()) {
				int idPizza = rs.getInt(1);
				String nomePizza = rs.getString(2);
				String caminhoPizza = rs.getString(3);
				String descricaoPizza = rs.getString(4);
				Double valorPizza = rs.getDouble(5);
				Boolean estoquePizza = rs.getBoolean(6);
				String tipoPizza = rs.getString(7);

				System.out.print("Valor rs 5 :" + rs.getInt(5));

				pizzas.add(new PizzaBeans(idPizza, nomePizza, caminhoPizza, descricaoPizza, valorPizza, estoquePizza,
						tipoPizza));

			}
			stmt.executeQuery();
			stmt.close();
			conn.close();
		} catch (Exception e) {
			System.out.print("ERRO: " + e);
		}
		return pizzas;

	}
//Consulta Pizza por ID
	public ArrayList<PizzaBeans> consultaIdPizzas(Integer id) {
		System.out.print("OK");
		ArrayList<PizzaBeans> pizzas = new ArrayList<>();
		String sql = "select * from tbpizzas WHERE id_pizza = ?";
		try {
			Connection conn = conecta.getConnection();
			System.out.print("OK");
			PreparedStatement stmt = conn.prepareStatement(sql);
			stmt.setInt(1, id);
			ResultSet rs = stmt.executeQuery();
			while (rs.next()) {
				int idPizza = rs.getInt(1);
				String nomePizza = rs.getString(2);
				String caminhoPizza = rs.getString(3);
				String descricaoPizza = rs.getString(4);
				Double valorPizza = rs.getDouble(5);
				Boolean estoquePizza = rs.getBoolean(6);
				String tipoPizza = rs.getString(7);

				System.out.print("Valor rs 5 :" + rs.getInt(5));

				pizzas.add(new PizzaBeans(idPizza, nomePizza ,caminhoPizza, descricaoPizza, valorPizza, estoquePizza,
						tipoPizza));

			}
			stmt.executeQuery();
			stmt.close();
			conn.close();
		} catch (Exception e) {
			System.out.print("ERRO: " + e);
		}
		return pizzas;

	}
//Consulta de todas as pizzas
	public ArrayList<PizzaBeans> consultaPizzas() {
		System.out.print("OK");
		ArrayList<PizzaBeans> pizzas = new ArrayList<>();
		String sql = "select * from tbpizzas WHERE estoque_pizza = 1";
		try {
			Connection conn = conecta.getConnection();
			System.out.print("OK");
			PreparedStatement stmt = conn.prepareStatement(sql);
			ResultSet rs = stmt.executeQuery();
			while (rs.next()) {
				int idPizza = rs.getInt(1);
				String nomePizza = rs.getString(2);
				String caminhoPizza = rs.getString(3);
				String descricaoPizza = rs.getString(4);
				Double valorPizza = rs.getDouble(5);
				Boolean estoquePizza = rs.getBoolean(6);
				String tipoPizza = rs.getString(7);

				System.out.print("Valor rs 5 :" + rs.getInt(5));

				pizzas.add(new PizzaBeans(idPizza, nomePizza, caminhoPizza, descricaoPizza, valorPizza, estoquePizza,
						tipoPizza));

			}
			stmt.executeQuery();
			stmt.close();
			conn.close();
		} catch (Exception e) {
			System.out.print("ERRO: " + e);
		}
		return pizzas;

	}
//Alterar Pizza
	public void alterarPizza(PizzaBeans pizza) {
		try {
			Connection conn = conecta.getConnection();
			String sql = "UPDATE tbpizzas SET nome_pizza = ?,caminho_img_pizza = ?,descricao_pizza = ?,valor_pizza = ?,estoque_pizza = ?,tipo_pizza = ? WHERE id_pizza = ?";
			PreparedStatement stmt = conn.prepareStatement(sql);
			stmt.setString(1, pizza.getNome_Pizza());
			stmt.setString(2, pizza.getCaminho_img_Pizza());
			stmt.setString(3, pizza.getDescricao_Pizza());
			stmt.setDouble(4, pizza.getValor_Pizza());
			stmt.setBoolean(5, pizza.isEstoque_Pizza());
			stmt.setString(6, pizza.getTipo_Pizza());
			stmt.setInt(7, pizza.getId_Pizza());
			stmt.execute();
			stmt.close();
			conn.close();
			System.out.print("OK");
		} catch (Exception e) {
			System.out.print("ERRO: " + e);
		}
	}
//Deletar Pizza com ID
	public void DeletarPizza (Integer id) {
		String sql = "DELETE from tbpizzas WHERE id_pizza = ?";
		try {
			Connection conn = conecta.getConnection();
			System.out.print("OK");
			PreparedStatement stmt = conn.prepareStatement(sql);
			stmt.setInt(1, id);
			stmt.execute();
			stmt.close();
			conn.close();
		} catch (Exception e) {
			System.out.print("ERRO: " + e);
		}
	}
}
