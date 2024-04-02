package model;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

import conexao.conecta;

public class PizzaDAO {
	public void cadastrarPizza() {
		try{
			Connection conn = conecta.getConnection();
			System.out.print("OK");
		}
		catch(Exception e){
			System.out.print("ERRO: "+e);
		}
	}
	public void alterarPizza() {
		try{
			Connection conn = conecta.getConnection();
			System.out.print("OK");
		}
		catch(Exception e){
			System.out.print("ERRO: "+e);
		}
	}
	public ArrayList<PizzaBeans> listarPizzas(){
		ArrayList<PizzaBeans> pizzas = new ArrayList<>();
		String sql = "select * from tbpizza";
		try{
			Connection conn = conecta.getConnection();
			System.out.print("OK");
			PreparedStatement stmt = conn.prepareStatement(sql);
			ResultSet rs = stmt.executeQuery();
			while(rs.next()) {
				System.out.print("Valor rs 5 :"+rs.getString(1));
				int idPizza = rs.getInt(2);
				System.out.print("Valor rs 5 :"+rs.getInt(5));
				String nomePizza = rs.getString(1);
				String descricaoPizza = rs.getString(3);
				String caminhoPizza = rs.getString(4);
				Double valorPizza = rs.getDouble(5);
				System.out.print("Valor rs 5 :"+rs.getInt(5));
				String a = "abacaxi";
				
				pizzas.add(new PizzaBeans(idPizza,nomePizza,descricaoPizza,caminhoPizza,valorPizza,false,a));
				
			}
			stmt.executeQuery();
			stmt.close();
			conn.close();
		}
		catch(Exception e){
			System.out.print("ERRO: "+e);
		}
		return pizzas;
		
	}
}
