package service;

import dao.PassagemDao;
import model.Passagem;

public class PassagemService {
	
	PassagemDao dao = new PassagemDao();
	
	public boolean adicionarPassagem(Passagem passagem) {
		return dao.adicionarPassagem(passagem);
	}

}
