package controller;

import java.io.IOException;
import java.util.ArrayList;
import java.util.Date;
import java.text.DateFormat;
import java.text.SimpleDateFormat;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.google.gson.Gson;

import model.PedidoBeans;
import model.PedidoClienteBeans;
import model.PedidoClienteDAO;
import model.PedidoDAO;
import model.PizzaBeans;

/**
 * Servlet implementation class PedidoController
 */
@WebServlet(urlPatterns = {"/cadastrarPedido","/viewPedido","/finalizarPedido"})
public class PedidoController extends HttpServlet {
	private static final long serialVersionUID = 1L;
	
	PedidoClienteDAO daoPedidoCliente = new PedidoClienteDAO();
	PedidoClienteBeans beansPedidoCliente = new PedidoClienteBeans();
	PedidoDAO daoPedido = new PedidoDAO();
	PedidoBeans beansPedido = new PedidoBeans();
	Gson gson = new Gson();
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public PedidoController() {
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
		// Ação a partir da Url Recebida

		if (action.equals("/cadastrarPedido")) {
			telaCadastroPedido(request, response);
		}
		else if (action.equals("/finalizarPedido")) {
			finalizarPedido(request, response);
		}
		else if (action.equals("/viewPedido")) {
			telaPedido(request, response);
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
	}
	protected void telaCadastroPedido(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		
		System.out.printf("Aqui");
		
		HttpSession session = request.getSession();
		String id_usuario;
		id_usuario = session.getValue("id_usuario").toString();
		Object pedidoClienteSession;
		pedidoClienteSession = session.getValue("id_pedido_cliente");
		if (pedidoClienteSession == null) {
			System.out.printf("Vazio");
			System.out.printf(""+String.valueOf(beansPedidoCliente.getId_Usuario()));
			DateFormat dateFormat = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
			Date date = new Date();
			beansPedidoCliente.setId_Usuario(Integer.parseInt(id_usuario));
			beansPedidoCliente.setHora_Pedido(dateFormat.format(date));
			beansPedidoCliente.setStatus_Pedido(1);
			beansPedidoCliente.setPagamento(false);
			daoPedidoCliente.cadastrarPedidoCliente(beansPedidoCliente);
			System.out.printf("ID");
			session.putValue("id_pedido_cliente",beansPedidoCliente.getId_Pedido_Cliente());
			System.out.printf("Sessao");
			System.out.printf(String.valueOf(beansPedidoCliente.getId_Pedido_Cliente()));
			System.out.printf(dateFormat.format(date));
			beansPedido.setId_pizza(Integer.parseInt(request.getParameter("txtIdPizza")));
			beansPedido.setId_pedido_cliente(beansPedidoCliente.getId_Pedido_Cliente());
			beansPedido.setQuantidade(Integer.parseInt(request.getParameter("txtQuantidadePizza")));
			daoPedido.cadastrarPedido(beansPedido);
		}
		else {
			Object id_pedido_cliente = session.getValue("id_pedido_cliente");
			System.out.printf("Atualizar");
			response.getWriter().append("id_pedido_cliente"+id_pedido_cliente).toString();
			System.out.printf("id_pedido_cliente"+id_pedido_cliente.toString());
			System.out.println("Id Pizza:"+request.getParameter("txtIdPizza"));
			beansPedido.setId_pizza(Integer.parseInt(request.getParameter("txtIdPizza")));
			beansPedido.setId_pedido_cliente(Integer.parseInt(id_pedido_cliente.toString()));
			beansPedido.setQuantidade(Integer.parseInt(request.getParameter("txtQuantidadePizza")));
			daoPedido.cadastrarPedido(beansPedido);
		}
	
	}
	protected void telaPedido(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		HttpSession session = request.getSession();
		Object id_pedido_cliente = session.getValue("id_pedido_cliente");
		ArrayList<PedidoBeans> listaPedido = daoPedido.consultaPedido(Integer.parseInt(id_pedido_cliente.toString()));
		request.setAttribute("pedidos", listaPedido);
		System.out.println();
		System.out.println();
		System.out.println(gson.toJson(listaPedido));
		response.getWriter().append(gson.toJson(listaPedido));
		RequestDispatcher rd = request.getRequestDispatcher("view/Pedido.jsp");
		rd.forward(request, response);
	}
	protected void finalizarPedido(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		HttpSession session = request.getSession();
		Object id_pedido_cliente = session.getValue("id_pedido_cliente");
		System.out.println(id_pedido_cliente);
		System.out.println(request.getParameter("totalPedido"));
		beansPedidoCliente.setValor_Total(Double.parseDouble(request.getParameter("totalPedido")));
		beansPedidoCliente.setId_Pedido_Cliente(Integer.parseInt(id_pedido_cliente.toString()));
		daoPedidoCliente.FinalizarPedido(beansPedidoCliente);
		
	}

}
