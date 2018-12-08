package controller;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.apache.jasper.tagplugins.jstl.core.ForEach;

import model.Cliente;
import model.Passagem;
import model.Voo;
import service.ClienteService;
import service.PassagemService;
import service.VooService;

/**
 * Servlet implementation class VooController
 */
@WebServlet("/Voo")
public class VooController extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doPost(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		VooService vs = new VooService();
		PassagemService ps = new PassagemService();
		ClienteService cs = new ClienteService();

		Passagem passagem = new Passagem();
		Cliente cliente = new Cliente();
		Voo voo1 = new Voo();
		
		HttpSession sessao = request.getSession();
		
		//request.setAttribute("cliente", cliente);
		
        String acao = request.getParameter("acao");
    	request.setCharacterEncoding("UTF-8");
        response.setCharacterEncoding("UTF-8");
        RequestDispatcher view = null;
        view = request.getRequestDispatcher("index.jsp");
		// HttpSession session = request.getSession();
                
        String data_ida = request.getParameter("data_ida");
        String data_volta = request.getParameter("data_volta");
        String destino = request.getParameter("destino");
        String origem = request.getParameter("ida");
        
        System.out.println(acao);
       if(acao.equals("listarPassagems")){
	    	
	    	//take of session
	    	int voo_id = 1;
	    	
	    	ArrayList<Passagem> ap = new ArrayList<Passagem>();
	    	ap = vs.listarPassagens(voo_id);
	    	
	    	request.setAttribute("passagens", ap);
     		view = request.getRequestDispatcher("dadosVoo.jsp");

		}
       else if(acao.equals("pesquisar")){
	    	 	    	
 	    	ArrayList<Voo> vi = new ArrayList<Voo>();
 	    	ArrayList<Voo> vv = new ArrayList<Voo>();
 	    	vi = vs.pesquisarVoos(data_ida, origem); 	    	
 	    	request.setAttribute("vi", vi);
 	    	System.out.println(vi);
 	    	vv = vs.pesquisarVoos(data_volta, destino);
 	    	request.setAttribute("vv", vv);
 	        
 	    	for(Voo voo : vi) {
 	    		System.out.println(voo.getId());
 	    		System.out.println(voo.getDestino());
 	    		System.out.println(voo.getFileiras());
 	    	}
 	    	
      		view = request.getRequestDispatcher("listaVoos.jsp");

 		}
       
       else if(acao.equals("minhasPassagens")) {
    	   sessao = request.getSession();	    	
	       cliente = (Cliente) sessao.getAttribute("cliente");
	       ArrayList<Passagem> voos;
	       voos = cs.listarPassagens(cliente.getCpf());
	       System.out.println(voos.toString());
	       
	       for (Passagem object: voos) {
	    	   System.out.println("listando");
	    	   Voo voo = new Voo();
	    	   voo.setId(object.getVooId());
	    	   object.setVoo(vs.carregar(voo));
	    	}
	       
	       request.setAttribute("voos", voos);
     		view = request.getRequestDispatcher("buscarVoos.jsp");
       }
       
       else if(acao.equals("comprar")){
    	   String id = request.getParameter("id");
    	   voo1.setId(Integer.parseInt(id));
	       vs.carregar(voo1);
	       
	       sessao = request.getSession();	    	
	       cliente = (Cliente) sessao.getAttribute("cliente");
	    	
	       passagem.setCliente(cliente);
	       passagem.setVooId(voo1.getId());
	       passagem.setFileira(24);
	       passagem.setFormaPagamento("CARTAO");
	       passagem.setParcelasPagamento(1);
	       
	       ps.adicionarPassagem(passagem);
	       
	       ArrayList<Passagem> voos;
	       voos = cs.listarPassagens(cliente.getCpf());
	       System.out.println(voos.toString());
	       
	       for (Passagem object: voos) {
	    	   System.out.println("listando");
	    	   Voo voo = new Voo();
	    	   voo.setId(object.getVooId());
	    	   object.setVoo(vs.carregar(voo));
	    	}
	       
	       request.setAttribute("voos", voos);
	      
     		view = request.getRequestDispatcher("buscarVoos.jsp");

		}
       
	    else{
	        view = request.getRequestDispatcher("paginaNaoEncontrada.jsp");
		}	    
		   
		view.forward(request, response);
	}

}
