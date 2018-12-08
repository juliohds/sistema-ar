package service;

import java.util.ArrayList;
import java.util.Date;

import dao.VooDao;
import model.Passagem;
import model.Voo;

public class VooService {
	
	VooDao dao = new VooDao();
	
	public ArrayList<Passagem> listarPassagens(int id) {
		return dao.listarPassagens(id);
	}

	public ArrayList<Voo> pesquisarVoos(String data, String origem) {
		return dao.pesquisarVoos(data, origem);
	}

	public Voo carregar(Voo voo1) {
		return dao.carregar(voo1);		
	}
}
