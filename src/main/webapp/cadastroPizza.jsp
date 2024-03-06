<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"
	
	import="java.sql.*"
	    %>
<%@ page language="java" import="conexao.conecta" %>
<%
	String nomePizza = request.getParameter("nomePizzatxt");
	out.println(nomePizza);
	String descricaoPizza = request.getParameter("descricaoPizzatxt");
	out.println(descricaoPizza);
	int valorPizza = Integer.parseInt(request.getParameter("valorPizza"));
	out.println(valorPizza);
	String caminhoImg = "Img1.jpg";
	out.println(caminhoImg);
	
	try{
		out.println("ok1");
		Connection con = conecta.getConnection();
		out.println("ok2");
		out.println(con);
		String sql = "INSERT INTO tbPizza (nomePizza,decricao_Pizza,caminho_imgPizza,valor_Pizza) VALUES (?,?,?,?)";
		
		PreparedStatement stmt = con.prepareStatement(sql);
		stmt.setString(1,nomePizza);
		stmt.setString(2,descricaoPizza);
		stmt.setString(3,caminhoImg);
		stmt.setInt(4,valorPizza);
		stmt.execute();
		stmt.close();
		con.close();
		
		
	}
	catch(Exception e){
		out.println("\nErro Aqui: "+e);
	}
%>