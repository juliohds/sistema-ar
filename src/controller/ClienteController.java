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

import model.Cliente;
import model.Passagem;
import service.ClienteService;
import util.EnvioEmail;

@WebServlet("/Cliente")
public class ClienteController extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doPost(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
	    
		EnvioEmail enviar = new EnvioEmail();
		
		ClienteService cs = new ClienteService();
		Cliente cliente = new Cliente();
		
		//request.setAttribute("cliente", cliente);
    	HttpSession sessao = request.getSession();

        String acao = request.getParameter("acao");
        
        String nome = request.getParameter("nome");
        String telefone = request.getParameter("telefone");
        String endereco = request.getParameter("endereco");
        String rg = request.getParameter("rg");
        String cpf = request.getParameter("cpf");
        String email = request.getParameter("email");
        String senha = request.getParameter("senha");
        
    	request.setCharacterEncoding("UTF-8");
        response.setCharacterEncoding("UTF-8");
        RequestDispatcher view = null;
		
		// HttpSession session = request.getSession();
        System.out.println(acao);
        
	    if(acao.equals("login")){
	    	view = request.getRequestDispatcher("loginUsuario.jsp");
		}
	    else if(acao.equals("dadosUsuario")) {
	    	
	    	sessao = request.getSession();	    	
	    	cliente = (Cliente) sessao.getAttribute("cliente");
	    	cs.carregar(cliente);
	    	
	    	request.setAttribute("cliente", cliente);
	    	view = request.getRequestDispatcher("dadosUsuario.jsp");
	    }
	    else if(acao.equals("atualizar")) {
	    	    	
	    	cliente.setNome(nome);
	    	cliente.setCidade("SãoPaulo");
	    	cliente.setCpf(cpf);
	    	cliente.setEmail(email);
	    	cliente.setEndereco(endereco);
	    	cliente.setEstado("SP");
	    	cliente.setRg(rg);
	    	cliente.setTelefone(telefone);
	    	cliente.setSenha(senha);
	    	
	    	if(cs.atualizar(cliente)) {
	    		sessao.setAttribute("cliente", cliente);
	    		view = request.getRequestDispatcher("listaVoos.jsp?msg=atualizado");
	    	}else {
	    		view = request.getRequestDispatcher("dadosUsuario.jsp?msg=erroAtualizar");
	    	}
	    }
	    else if(acao.equals("cadastro")){
	    	view = request.getRequestDispatcher("cadastroUsuario.jsp");
	    }
	    else if(acao.equals("novo")){
	    	
	    	cliente.setNome(nome);
	    	cliente.setCidade("SãoPaulo");
	    	cliente.setCpf(cpf);
	    	cliente.setEmail(email);
	    	cliente.setEndereco(endereco);
	    	cliente.setEstado("SP");
	    	cliente.setRg(rg);
	    	cliente.setTelefone(telefone);
	    	cliente.setSenha(senha);
	    	
	    	if(cs.cadastrar(cliente)) {
	    		sessao = request.getSession();
		    	cs.carregar(cliente);
		    	sessao.setAttribute("cliente", cliente);
	    		view = request.getRequestDispatcher("listaVoos.jsp?msg=criado");
	    	}else {
	    		view = request.getRequestDispatcher("cadastroUsuario.jsp?msg=erroCadastro");
	    	}
		}	
	    else if(acao.equals("logar")) {
	    	
	    	cliente.setCpf(cpf);
	    	cliente.setSenha(senha);
	    	System.out.println(cliente.getSenha());
	    	System.out.println(cliente.getCpf());
	    	
	    	sessao = request.getSession();
	    	cs.carregar(cliente);
	    	System.out.println(cliente.getEmail());
	    	if(cliente.getNome()==null) {
	    		view = request.getRequestDispatcher("loginUsuario.jsp");
	    	}else {
	    		request.setAttribute("cliente", cliente);
	    		view = request.getRequestDispatcher("listaVoos.jsp");
	    	}
	        sessao.setAttribute("cliente", cliente);	       	        
	    }
	    else if(acao.equals("sair")) {
	    	sessao = request.getSession();
	    	sessao.setAttribute("cliente", null);	
	    	view = request.getRequestDispatcher("index.jsp");
	    }
	    else if(acao.equals("novaSenha")){
	    	
	    	
	    	if(cs.alterarSenha(cpf, senha)) {
	    		view = request.getRequestDispatcher("index.jsp?msg=novaSenha");
	    	}else {
	    		view = request.getRequestDispatcher("loginUsuario.jsp?msg=erroNovaSenha");
	    	}
	    }
	    else if(acao.equals("listarPassagems")){
	    	
	    	//take of session
	    	cliente.setCpf("39035276884");
	    	
	    	ArrayList<Passagem> ap = new ArrayList<Passagem>();
	    	ap = cs.listarPassagens(cliente.getCpf());
	    	
	    	request.setAttribute("passagens", ap);
     		view = request.getRequestDispatcher("VoosUsuario.jsp");

		}
	    
	    
	    
	    else if(acao.equals("EsqueciSenha")) {
	    	
	    	view = request.getRequestDispatcher("index.jsp");
	    	cliente.setEmail(email);
	    	cs.carregarSenha(cliente);
	    	
	    	System.out.println(cliente.getSenha());
	    	
	    	enviar.setEmailDestinatario(email);
	        enviar.setAssunto("Contato - Viagens");
	        //uso StringBuffer para otimizar a concatenação 
	        //de string
	        StringBuffer texto = new StringBuffer(); 
	        texto.append("Atenção ");
	        texto.append("Informações Enviadas:  ");
	        texto.append("Sua Senha: ");
	        texto.append(cliente.getSenha());
	        	        
	        enviar.setMsg(texto.toString());
	        System.out.println(enviar.getMsg());
	        boolean enviou = enviar.enviarHotmail();
	     
	      
	    }
	    
	    
	    else{
           view = request.getRequestDispatcher("paginaNaoEncontrada.jsp");
	    }	    
	    
	    view.forward(request, response);
        
	}

}
