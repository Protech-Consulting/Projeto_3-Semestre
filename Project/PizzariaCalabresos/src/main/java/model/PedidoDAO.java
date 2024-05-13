package model;

import java.sql.Connection;
import java.sql.PreparedStatement;

import conexao.conecta;

public class PedidoDAO {
	
	public void cadastrarPedido(PedidoBeans Pedido) {
		try {
			Connection conn = conecta.getConnection();
			String sql = "INSERT INTO tbpedido (id_pizza, id_pedido_cliente, quantidade_pizza) VALUES (?,?,?);";
			PreparedStatement stmt = conn.prepareStatement(sql);
			stmt.setInt(1, Pedido.getId_pizza());
			stmt.setInt(2, Pedido.getId_pedido_cliente());
			stmt.setInt(3, Pedido.getQuantidade());
			System.out.print(stmt);
			stmt.execute();
			stmt.close();
			conn.close();
			System.out.print("OK");
		} catch (Exception e) {
			System.out.print("ERRO: " + e);
		}
	}

}
