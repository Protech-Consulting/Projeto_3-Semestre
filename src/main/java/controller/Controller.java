package controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

//Aqui voce configura a url que você ira receber
@WebServlet(urlPatterns = {"/Controller","/main","/telaLogin"})
public class Controller extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    public Controller() {
        super();
    }
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String action = request.getServletPath();
		System.out.print(action);
		//Ação a partir da Url Recebida
		if(action.equals("/main")) {
			telaLogin(request,response);
		}
	}
	protected void telaLogin(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		response.sendRedirect("view/login.html");
	}

}
