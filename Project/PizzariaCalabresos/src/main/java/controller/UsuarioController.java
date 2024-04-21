package controller;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.google.gson.Gson;

import model.PizzaBeans;
import model.UsuarioBeans;
import model.UsuarioDAO;

/**
 * Servlet implementation class UsuarioController
 */
@WebServlet(urlPatterns = { "/viewCadastrarUsuario","/cadastrarUsuario","/logarUsuario"})
public class UsuarioController extends HttpServlet {
	private static final long serialVersionUID = 1L;
	UsuarioDAO daoUsuario = new UsuarioDAO();
	UsuarioBeans beansUsuario = new UsuarioBeans();
	Gson gson = new Gson();
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public UsuarioController() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.getWriter().append("Served at: ").append(request.getContextPath());
		String action = request.getServletPath();
		System.out.print(action);
		if (action.equals("/viewCadastrarUsuario")) {
			TelaCadastro(request, response);
		}
		else if (action.equals("/consultarUsuario")) {
			
		}
		else if (action.equals("/logarUsuario")) {
			LoginUsuario(request, response);
			}
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.getWriter().append("Served at: ").append(request.getContextPath());
		String action = request.getServletPath();
		System.out.print(action);
		if (action.equals("/cadastrarUsuario")) {
			CadastrarUsuario(request, response);
		}
	}
	protected void TelaCadastro(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		response.sendRedirect("view/cadastroUsuario.jsp");
	}
	protected void CadastrarUsuario(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		String user = "user";
		String password = "Gus";
		int nivel_acesso = 1;
		String nome = "Gus";
		String cpf = "12345678910";
		String complemento = "rua do cara mais lindo de todos";
		String celular = "11961535779";
		String rua = "Rua Elias checone";
		String  bairro = "Vila rosalina";
		int numero = 25;
		password = security.Criptografia.criptografar(password);
		
		beansUsuario.setUser_Usuario(user);
		beansUsuario.setPassword_Usuario(password);
		beansUsuario.setNivel_acesso_Usuario(nivel_acesso);
		beansUsuario.setNome_Usuario(nome);
		beansUsuario.setCpf_Usuario(cpf);
		beansUsuario.setComplemento_Usuario(complemento);
		beansUsuario.setCelular_Usuario(celular);
		beansUsuario.setRua_Usuario(rua);
		beansUsuario.setBairro_Usuario(bairro);
		beansUsuario.setNumeroCasa_Usuario(numero);
		
		daoUsuario.cadastrarUsuario(beansUsuario);
		
		
		
	}
	protected void LoginUsuario(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		String user = "user";
		String password = "Gus";
		password = security.Criptografia.criptografar(password);
		ArrayList<UsuarioBeans> listaUsuario = daoUsuario.loginUsuario(user,password);
		
		if (listaUsuario.isEmpty() == true || listaUsuario == null ) {
			System.out.print("Vazio");
			response.getWriter().append("Dados não Encontrados");
		}
		else {
			System.out.print("Dados Aqui");
			response.getWriter().append(gson.toJson(listaUsuario));
		}
		
	}

}
