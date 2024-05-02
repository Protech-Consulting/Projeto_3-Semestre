package model;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

import conexao.conecta;

public class UsuarioDAO {
	public void cadastrarUsuario(UsuarioBeans usuario) {
		try {
			Connection conn = conecta.getConnection();
			String sql = "insert into tbusuario (user_usuario,password_usuario,nivel_acesso_usuario,nome_usuario,cpf_usuario,complemento_usuario,celular_usuario,rua_usuario,bairro_usuario,numeroCasa_usuario) values (?,?,?,?,?,?,?,?,?,?)";
			PreparedStatement stmt = conn.prepareStatement(sql);
			stmt.setString(1, usuario.getUser_Usuario());
			stmt.setString(2, usuario.getPassword_Usuario());
			stmt.setInt(3, usuario.getNivel_acesso_Usuario());
			stmt.setString(4, usuario.getNome_Usuario());
			stmt.setString(5, usuario.getCpf_Usuario());
			stmt.setString(6, usuario.getComplemento_Usuario());
			stmt.setString(7, (usuario.getCelular_Usuario()));
			stmt.setString(8, usuario.getRua_Usuario());
			stmt.setString(9, usuario.getBairro_Usuario());
			stmt.setInt(10, usuario.getNumeroCasa_Usuario());
			System.out.print(stmt);
			stmt.execute();
			stmt.close();
			conn.close();
			System.out.print("OK");
		} catch (Exception e) {
			System.out.print("ERRO: " + e);
		}
	}
	public ArrayList<UsuarioBeans> consultarUsuarios() {
		System.out.print("OK");
		ArrayList<UsuarioBeans> usuarios = new ArrayList<>();
		String sql = "select * from tbusuario";
		try {
			Connection conn = conecta.getConnection();
			System.out.print("OK");
			PreparedStatement stmt = conn.prepareStatement(sql);
			ResultSet rs = stmt.executeQuery();
			while (rs.next()) {
				int idUsuario = rs.getInt(1);
				String user = rs.getString(2);
				String password = rs.getString(3);
				int nivel_acesso = rs.getInt(4);
				String nome = rs.getString(5);
				String cpf = rs.getString(6);
				String complemento=rs.getString(7);
				String celular=rs.getString(8);
				String rua = rs.getString(9);
				String bairro = rs.getString(10);
				int numero = rs.getInt(11);

				System.out.print("Valor rs 5 :" + rs.getString(5));

				usuarios.add(new UsuarioBeans(idUsuario, user, password, nivel_acesso, nome, cpf,
						complemento,celular,rua,bairro,numero));

			}
			stmt.executeQuery();
			stmt.close();
			conn.close();
		} catch (Exception e) {
			System.out.print("ERRO: " + e);
			
		}
		return usuarios;

	}
	public ArrayList<UsuarioBeans> loginUsuario(String userUsuario,String passwordUsuario) {
		System.out.print("OK");
		ArrayList<UsuarioBeans> usuario = new ArrayList<>();
		String sql = "select * from tbusuario WHERE user_usuario = ? and password_usuario = ?";
		try {
			Connection conn = conecta.getConnection();
			System.out.print("OK");
			PreparedStatement stmt = conn.prepareStatement(sql);
			stmt.setString(1, userUsuario);
			stmt.setString(2, passwordUsuario);
			ResultSet rs = stmt.executeQuery();
			while (rs.next()) {
				int idUsuario = rs.getInt(1);
				String user = rs.getString(2);
				String password = rs.getString(3);
				int nivel_acesso = rs.getInt(4);
				String nome = rs.getString(5);
				String cpf = rs.getString(6);
				String complemento=rs.getString(7);
				String celular=rs.getString(8);
				String rua = rs.getString(9);
				String bairro = rs.getString(10);
				int numero = rs.getInt(11);
				System.out.print(stmt);


				usuario.add(new UsuarioBeans(idUsuario, user, password, nivel_acesso, nome, cpf,
						complemento,celular,rua,bairro,numero));

			}
			stmt.executeQuery();
			stmt.close();
			conn.close();
		}
		catch (SQLException erro) {
			return null;
		}
		catch (Exception e) {
			System.out.print("ERRO: " + e);
		}
		return usuario;

	}
	public void editarUsuario(UsuarioBeans usuario) {
		try {
			Connection conn = conecta.getConnection();
			String sql = "UPDATE tbusuario SET user_usuario = ?,password_usuario = ?,nivel_acesso_usuario = ?,nome_usuario = ?,cpf_usuario = ?,complemento_usuario = ?,celular_usuario = ?,rua_usuario = ?,bairro_usuario = ?, numeroCasa_usuario = ? WHERE id_usuario = ?";
			PreparedStatement stmt = conn.prepareStatement(sql);
			stmt.setString(1, usuario.getUser_Usuario());
			stmt.setString(2, usuario.getPassword_Usuario());
			stmt.setInt(3, usuario.getNivel_acesso_Usuario());
			stmt.setString(4, usuario.getNome_Usuario());
			stmt.setString(5, usuario.getCpf_Usuario());
			stmt.setString(6, usuario.getComplemento_Usuario());
			stmt.setString(7, (usuario.getCelular_Usuario()));
			stmt.setString(8, usuario.getRua_Usuario());
			stmt.setString(9, usuario.getBairro_Usuario());
			stmt.setInt(10, usuario.getNumeroCasa_Usuario());
			stmt.setInt(11,usuario.getId_Usuario());
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
