package dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;

import model.Passagem;

public class PassagemDao {

	public boolean adicionarPassagem(Passagem passagem) {
		String sql = "INSERT into Passagem (fileira,poltrona,formaPagamento,parcelasPagamento,cpf_cliente,id_voo) values(?,?,?,?,?,?)";

		try (Connection conn1 = ConnectionFactory.obtemConexao();
				PreparedStatement stm1 = conn1.prepareStatement(sql);) {
				stm1.setInt(1, passagem.getFileira());
				stm1.setString(2, String.valueOf(passagem.getPoltrona()));
				stm1.setString(3, passagem.getFormaPagamento());
				stm1.setInt(4, passagem.getParcelasPagamento());
				stm1.setString(5, passagem.getCliente().getCpf());
				stm1.setInt(6, passagem.getVooId());				
				stm1.execute();
			return true;
		} catch (SQLException e1) {
			System.out.print(e1.getStackTrace());
			return false;
		}
	}
}
