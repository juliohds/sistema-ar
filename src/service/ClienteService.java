package service;

import java.util.ArrayList;

import dao.ClienteDao;
import model.Cliente;
import model.Passagem;

public class ClienteService {
	
	ClienteDao dao = new ClienteDao();
	
	public boolean cadastrar(Cliente cliente) {		
		return dao.cadastrar(cliente);
	}
	
	public Cliente carregar(Cliente cliente) {		
		return dao.carregar(cliente);
	}
	
	public boolean atualizar(Cliente cliente) {
		return dao.alterarDados(cliente);
	}

	public boolean alterarSenha(String cpf, String senha) {		
		return dao.alterarSenha(cpf, senha);
	}

	public ArrayList<Passagem> listarPassagens(String cpf) {
		return dao.listarPassagens(cpf);
	}

	public Cliente carregarSenha(Cliente cliente) {
		return dao.carregarSenha(cliente);		
	}

}
