package model;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.Statement;

import conexao.conecta;

public class PedidoClienteDAO {
	public void cadastrarPedidoCliente(PedidoClienteBeans clientePedido) {
		try {
			Connection conn = conecta.getConnection();
			String sql = "INSERT INTO tbpedidocliente (id_usuario, hora_pedido, status_pedido, pagamento) VALUES (?,?,?,?);";
			PreparedStatement stmt = conn.prepareStatement(sql,Statement.RETURN_GENERATED_KEYS);
			stmt.setInt(1, clientePedido.getId_Usuario());
			stmt.setString(2, clientePedido.getHora_Pedido());
			stmt.setInt(3, clientePedido.getStatus_Pedido());
			stmt.setBoolean(4, clientePedido.isPagamento());
			System.out.print(stmt);
			stmt.execute();
			ResultSet rs = stmt.getGeneratedKeys();
			int id = 0;
			if(rs.next()){
			    id = rs.getInt(1);
			}
			clientePedido.setId_Pedido_Cliente(id);
			stmt.close();
			conn.close();
			System.out.print("OK");
		} catch (Exception e) {
			System.out.print("ERRO: " + e);
		}
	}

}
