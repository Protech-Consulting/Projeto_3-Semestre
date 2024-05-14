package controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.google.gson.Gson;

import model.FuncionarioBeans;
import model.FuncionarioDAO;

@WebServlet(urlPatterns = { "/cadastrarFuncionario", "/loginFuncionario", "/consultarFuncionario" })

public class FuncionarioController extends HttpServlet {
	private static final long serialVersionUID = 1L;
	FuncionarioDAO daoFuncionario = new FuncionarioDAO();
	FuncionarioBeans beansFuncionario = new FuncionarioBeans();
	Gson gson = new Gson();

	public FuncionarioController() {
		super();
	}

	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		String action = request.getServletPath();
		System.out.print(action);

		// Ação à partir da Url Recebida

		if (action.equals("/cadastrarFuncionario")) {
			// TelaCadastroFuncionario(request, response);
		} else if (action.equals("/loginFuncionario")) {
			// TelaLoginFuncionario(request, response);
		} else if (action.equals("/consultarFuncionario")) {
			// TelaConsultarFuncionario(request, response);
		}
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		String action = request.getServletPath();
		System.out.print(action);
		if (action.equals("/cadastrarFuncionario")) {
			CadastrarFuncionario(request, response);
		}
	}

	protected void CadastrarFuncionario(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		System.out.println("");

		System.out.println(request.getParameter("txtEstoquePizza"));
		beansFuncionario.setNome_Funcionario(request.getParameter("txtNomePizza"));
		beansFuncionario.setSobrenome_Funcionario(request.getParameter("txtCaminhoImgPizza"));
		beansFuncionario.setCidade_Funcionario(request.getParameter("txtDescricaoPizza"));
		beansFuncionario.setEstado_Funcionario(request.getParameter("txtValorPizza"));
		beansFuncionario.setCep_Funcionario(Integer.parseInt(request.getParameter("txtCepFuncionario")));
		beansFuncionario.setEmail_Funcionario(request.getParameter("txtTipoPizza"));
		beansFuncionario.setSenha_Funcionario(request.getParameter("txtTipoPizza"));
		beansFuncionario.setConfirmacao_senha_Funcionario(request.getParameter("txtTipoPizza"));

		System.out.println(beansFuncionario.getNome_Funcionario());
		System.out.println(beansFuncionario.getSobrenome_Funcionario());
		System.out.println(beansFuncionario.getCidade_Funcionario());
		System.out.println(beansFuncionario.getEstado_Funcionario());
		System.out.println(beansFuncionario.getCep_Funcionario());
		System.out.println(beansFuncionario.getEmail_Funcionario());
		System.out.println(beansFuncionario.getSenha_Funcionario());
		System.out.println(beansFuncionario.getConfirmacao_senha_Funcionario());
		daoFuncionario.cadastrarFuncionario(beansFuncionario);
	}
}