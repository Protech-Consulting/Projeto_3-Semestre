package conexao;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

public class conecta {
	public static Connection getConnection() throws SQLException{
		
		try {
			Class.forName("com.mysql.jdbc.Driver");
			String connectionUrl = "jdbc:mysql://localhost:3306/db_pizzaria_calabresos";
			String usuario = "root";
		    String senha = "12345";
		    System.out.print("Conectou"); 
			return DriverManager.getConnection(connectionUrl,usuario,senha);
		}
		catch(ClassNotFoundException e) {
			System.out.print("Erro na Conexão com o Banco de Dados " + e);
			throw new SQLException(e.getException());
		}
		
	}
}
