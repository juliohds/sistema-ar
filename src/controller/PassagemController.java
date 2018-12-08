package controller;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import model.Cliente;
import model.Passagem;
import service.ClienteService;
import service.PassagemService;

/**
 * Servlet implementation class PassagemController
 */
@WebServlet("/Passagem")
public class PassagemController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doPost(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		
		PassagemService ps = new PassagemService();
		ClienteService cs = new ClienteService();
		
		Passagem passagem = new Passagem();
		Cliente cliente = new Cliente();
		//request.setAttribute("cliente", cliente);
		
        String acao = request.getParameter("acao");
    	request.setCharacterEncoding("UTF-8");
        response.setCharacterEncoding("UTF-8");
        RequestDispatcher view = null;
		
		// HttpSession session = request.getSession();
        System.out.println(acao);
            
	    
	    if(acao.equals("comprar")){
	    	
	    	//take of session
	    	cliente.setCpf("39035276884");
	    	
	    	char a = 'a';
	    	passagem.setCliente(cliente);
	    	passagem.setFileira(24);
	    	passagem.setFormaPagamento("CARTAO");
	    	passagem.setParcelasPagamento(2);
	    	passagem.setPoltrona(a);
	    	passagem.setVooId(1);
	    	
	    	if(ps.adicionarPassagem(passagem)) {
	    		view = request.getRequestDispatcher("passagensUsuario.jsp?msg=compraRealizada");
	    	}else {
	    		view = request.getRequestDispatcher("buscarVoos.jsp?msg=erroCompra");
	    	}
		}
	    else{
	        view = request.getRequestDispatcher("paginaNaoEncontrada.jsp");
		}	    
		   
		view.forward(request, response);
	}

}
