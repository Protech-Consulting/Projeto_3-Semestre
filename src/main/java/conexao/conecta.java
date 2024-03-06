package conexao;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

public class conecta {
	public static Connection getConnection() throws SQLException{
		
		try {
			Class.forName("com.mysql.jdbc.Driver");
			String connectionUrl = "jdbc:mysql://localhost:3306/dbpizzaria";
			String usuario = "root";
		    String senha = "39x59gs+";
		    System.out.print("Conectou");
			return DriverManager.getConnection(connectionUrl,usuario,senha);
		}
		catch(ClassNotFoundException e) {
			System.out.print("Erro" + e);
			throw new SQLException(e.getException());
		}
		
	}
}
