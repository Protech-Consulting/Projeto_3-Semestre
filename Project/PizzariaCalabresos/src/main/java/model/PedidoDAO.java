package model;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;

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
	public ArrayList<PedidoBeans> consultaPedido(int id_pedido_cli) {
		System.out.print("OK");
		ArrayList<PedidoBeans> pedido = new ArrayList<>();
		String sql = "select tbpedido.id_tbpedido,tbpizzas.id_pizza,tbpizzas.nome_pizza,tbpizzas.caminho_img_pizza,tbpizzas.valor_pizza,tbpedido.quantidade_pizza,tbpedido.id_pedido_cliente from tbpedido inner join tbpizzas on tbpizzas.id_pizza = tbpedido.id_pizza inner join tbpedidocliente on tbpedidocliente.id_pedido_cliente = tbpedido.id_pedido_cliente inner join tbusuario on tbusuario.id_usuario = tbpedidocliente.id_usuario where tbpedido.id_pedido_cliente = ?";
		try {
			Connection conn = conecta.getConnection();
			System.out.print("OK");
			PreparedStatement stmt = conn.prepareStatement(sql);
			stmt.setInt(1, id_pedido_cli);
			ResultSet rs = stmt.executeQuery();
			while (rs.next()) {
				int id_tbpedido = rs.getInt(1);
				int id_Pizza = rs.getInt(2);
				String nome_Pizza = rs.getString(3);
				String caminho_Pizza = rs.getString(4);
				Double valorPizza = rs.getDouble(5);
				int quantidade_Pizza = rs.getInt(6);
				int id_ped_cli = rs.getInt(7);

				System.out.print("Valor rs 5 :" + rs.getInt(5));

				pedido.add(new PedidoBeans(id_tbpedido, id_Pizza, nome_Pizza, caminho_Pizza, quantidade_Pizza,valorPizza,
						id_ped_cli));

			}
			stmt.executeQuery();
			stmt.close();
			conn.close();
		} catch (Exception e) {
			System.out.print("ERRO: " + e);
		}
		return pedido;

	}

}
