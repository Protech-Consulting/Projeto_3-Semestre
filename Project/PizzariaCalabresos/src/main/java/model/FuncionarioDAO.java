package model;

import java.sql.Connection;
import java.sql.PreparedStatement;

import conexao.conecta;

public class FuncionarioDAO {

	// Cadastro de Funcionário:
	public void cadastrarFuncionario(FuncionarioBeans funcionario) {
		
		try {
			Connection conn = conecta.getConnection();
			String sql = "insert into tbfuncionario (nome_Funcionario, sobrenome_Funcionario, cidade_Funcionario, estado_Funcionario, cep_Funcionario, email_Funcionario, senha_Funcionario, confirmacao_senha_Funcionario) values (?,?,?,?,?,?,?,?)";
			PreparedStatement stmt = conn.prepareStatement(sql);
			stmt.setString(1, funcionario.getNome_Funcionario());
			stmt.setString(2, funcionario.getSobrenome_Funcionario());
			stmt.setString(3, funcionario.getCidade_Funcionario());
			stmt.setString(4, funcionario.getEstado_Funcionario());
			stmt.setInt(5, funcionario.getCep_Funcionario());
			stmt.setString(6, funcionario.getEmail_Funcionario());
			stmt.setString(6, funcionario.getSenha_Funcionario());
			stmt.setString(6, funcionario.getConfirmacao_senha_Funcionario());
			stmt.execute();
			stmt.close();
			conn.close();
			System.out.print("OK");
		} catch (Exception e) {
			System.out.print("ERRO: " + e);
		}
	}
}
