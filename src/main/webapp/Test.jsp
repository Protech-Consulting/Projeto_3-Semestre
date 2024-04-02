<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"
	
	import="java.sql.*"
	import = "java.util.ArrayList"
	import = "model.PizzaBeans"
	    %>
<%@ page language="java" import="model.PizzaDAO" %>
<%
	
	try{
		PizzaDAO test = new PizzaDAO();
		ArrayList<PizzaBeans> lista = test.listarPizzas();
		for (int i=0; i<lista.size(); i++) {
		      System.out.printf("Posição %d- %s\n", i, lista.get(i).getNome_Pizza());
		      System.out.printf("Posição %d- %s\n", i, lista.get(i).getId_Pizza());
		      System.out.printf("Posição %d- %s\n", i, lista.get(i).getDescricao_Pizza());
		      System.out.printf("Posição %d- %s\n", i, lista.get(i).getCaminho_img_Pizza());
		      System.out.printf("Posição %d- %s\n", i, lista.get(i).getValor_Pizza());
		}
		
		
	}
	catch(Exception e){
		out.println("\nErro Aqui: "+e);
	}
%>