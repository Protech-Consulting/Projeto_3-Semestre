package conexao;

import java.sql.*;

import javax.swing.JOptionPane;

public class conecta {
	public static Connection getConnection() throws SQLException{
		
		try {
			Class.forName("com.microsoft.sqlserver.jdbc.SQLServerDriver");
			String connectionUrl = "jdbc:sqlserver://Gustavo_Desktop:1433;databaseName=dbPizzaria";
			JOptionPane.showMessageDialog(null, "Conexão Efetuada com sucesso!");
			return DriverManager.getConnection(connectionUrl);
		}
		catch(ClassNotFoundException e) {
			throw new SQLException(e.getException());
		}
		
	}
}
