package dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

import model.Passagem;
import model.Voo;

public class VooDao {
	
	public ArrayList<Voo> pesquisarVoos(String data, String origem){
		System.out.println("aqui");
		ArrayList<Voo> voos = new ArrayList<Voo>();

		String sqlSelect = "SELECT * FROM Voo WHERE dataPartida = ? and origem = ?";
				
		// usando o try with resources do Java 7, que fecha o que abriu
		try (Connection conn = ConnectionFactory.obtemConexao();
				PreparedStatement stm = conn.prepareStatement(sqlSelect);) {
			stm.setString(1, data);
			stm.setString(2, origem);
			try (ResultSet rs = stm.executeQuery();) {
				if (rs.next()) {
					Voo voo = new Voo();
										
					voo.setDataChegadaPrevista(rs.getDate("dataChegadaPrevista"));
					voo.setDataPartida(rs.getDate("dataPartida"));				
					voo.setDestino(rs.getString("destino"));
					voo.setFileiras(rs.getInt("fileiras"));
					voo.setHoraChegadaPrevista(rs.getDate("horaChegadaPrevista"));
					voo.setHoraPartida(rs.getDate("horaPartida"));
					voo.setId(rs.getInt("id"));
					voo.setNumero(rs.getInt("numero"));
					voo.setPoltronasPorFileira(rs.getInt("poltronasPorFileira"));
					voo.setOrigem(rs.getString("origem"));
					voo.setPrecoPorTrecho(rs.getDouble("precoTrecho"));
										
					voos.add(voo);
				} 
			} catch (SQLException e) {
				e.printStackTrace();
			}
		} catch (SQLException e1) {
			System.out.print(e1.getStackTrace());
		}
		return voos;
	
	}
	
	public ArrayList<Passagem> listarPassagens(int id){

		String sqlSelect = "SELECT * FROM Passagem WHERE id_voo = ?";
		ArrayList<Passagem> ap = new ArrayList<Passagem>();
		
		// usando o try with resources do Java 7, que fecha o que abriu
		try (Connection conn = ConnectionFactory.obtemConexao();
				PreparedStatement stm = conn.prepareStatement(sqlSelect);) {
			stm.setInt(1, id);
			try (ResultSet rs = stm.executeQuery();) {
				if (rs.next()) {
					Passagem passagem = new Passagem();
										
					passagem.setFormaPagamento(rs.getString("formaPagamento"));
					passagem.setFileira(rs.getInt("fileira"));
					passagem.setPoltrona(rs.getString("poltrona").charAt(0));
					passagem.setParcelasPagamento(rs.getInt("parcelasPagamento"));
					passagem.setVooId(rs.getInt("id_voo"));
					
					ap.add(passagem);
				} 
			} catch (SQLException e) {
				e.printStackTrace();
			}
		} catch (SQLException e1) {
			System.out.print(e1.getStackTrace());
		}
		return ap;
	}

	public Voo carregar(Voo voo1) {
		String sqlSelect = "SELECT * FROM Voo WHERE id = ?";
		
		// usando o try with resources do Java 7, que fecha o que abriu
		try (Connection conn = ConnectionFactory.obtemConexao();
				PreparedStatement stm = conn.prepareStatement(sqlSelect);) {
			stm.setInt(1, voo1.getId());
			try (ResultSet rs = stm.executeQuery();) {
				if (rs.next()) {
				
					voo1.setOrigem(rs.getString("origem"));
					voo1.setDestino(rs.getString("destino"));
					voo1.setDataChegadaPrevista(rs.getDate("dataChegadaPrevista"));
					voo1.setDataPartida(rs.getDate("dataPartida"));
					voo1.setPrecoPorTrecho(rs.getDouble("precoTrecho"));
				} 
			} catch (SQLException e) {
				e.printStackTrace();
			}
		} catch (SQLException e1) {
			System.out.print(e1.getStackTrace());
		}
		return voo1;
	}
}
