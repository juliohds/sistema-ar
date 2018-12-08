package dao;

import java.io.Console;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

import model.Cliente;
import model.Passagem;

public class ClienteDao {
	
	public boolean cadastrar(Cliente cliente) {
		String sql = "INSERT into Cliente (cpf,nome,telefone,endereco,cidade,estado,rg,senha,email) values(?,?,?,?,?,?,?,?,?)";
		
		try (Connection conn1 = ConnectionFactory.obtemConexao();
				PreparedStatement stm1 = conn1.prepareStatement(sql);) {
				stm1.setString(1, cliente.getCpf());
				stm1.setString(2, cliente.getNome());
				stm1.setString(3, cliente.getTelefone());
				stm1.setString(4, cliente.getEndereco());
				stm1.setString(5, cliente.getCidade());
				stm1.setString(6, cliente.getEstado());
				stm1.setString(7, cliente.getRg());
				stm1.setString(8, cliente.getSenha());
				stm1.setString(9, cliente.getEmail());
				stm1.execute();
			return true;
		} catch (SQLException e1) {
			System.out.print(e1.getStackTrace());
			return false;
		}
	}
	
	public boolean alterarDados(Cliente cliente) {
  		
		String sql = "UPDATE Cliente SET nome=?, telefone=?, endereco=?, cidade=?, estado=?, rg=?, senha=?, email=? WHERE cpf=?";
		
		try (Connection conn1 = ConnectionFactory.obtemConexao();
				PreparedStatement stm1 = conn1.prepareStatement(sql);) {

				stm1.setString(1, cliente.getNome());
				stm1.setString(2, cliente.getTelefone());
				stm1.setString(3, cliente.getEndereco());
				stm1.setString(4, cliente.getCidade());
				stm1.setString(5, cliente.getEstado());
				stm1.setString(6, cliente.getRg());
				stm1.setString(7, cliente.getSenha());
				stm1.setString(8, cliente.getEmail());
				stm1.setString(9, cliente.getCpf());
				stm1.execute();
				
			return true;
		} catch (SQLException e1) {
			System.out.print(e1.getStackTrace());
			return false;
		}
	}
	
	public boolean alterarSenha(String cpf, String senha) {
		
		String sql = "UPDATE Cliente SET senha=? WHERE cpf=?";
		
		try (Connection conn1 = ConnectionFactory.obtemConexao();
				PreparedStatement stm1 = conn1.prepareStatement(sql);) {

				stm1.setString(1, senha);				
				stm1.setString(2, cpf);
				stm1.execute();
				
			return true;
		} catch (SQLException e1) {
			System.out.print(e1.getStackTrace());
			return false;
		}
	}
	
	public ArrayList<Passagem> listarPassagens(String cpf){

		String sqlSelect = "SELECT * FROM Passagem WHERE cpf_cliente = ?";
		ArrayList<Passagem> ap = new ArrayList<Passagem>();
		
		// usando o try with resources do Java 7, que fecha o que abriu
		try (Connection conn = ConnectionFactory.obtemConexao();
				PreparedStatement stm = conn.prepareStatement(sqlSelect);) {
			stm.setString(1, cpf);
			try (ResultSet rs = stm.executeQuery();) {
				while (rs.next()) {
					Passagem passagem = new Passagem();
					Cliente cliente = new Cliente();
					
					passagem.setFormaPagamento(rs.getString("formaPagamento"));
					passagem.setFileira(rs.getInt("fileira"));
					passagem.setPoltrona(rs.getString("poltrona").charAt(0));
					passagem.setParcelasPagamento(rs.getInt("parcelasPagamento"));
					cliente.setCpf(rs.getString("cpf_cliente"));
					passagem.setCliente(cliente);
					System.out.println("aqui");
					passagem.setVooId(rs.getInt("id_voo"));
					System.out.println("aqui2");
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

	public Cliente carregar(Cliente cliente) {
		System.out.println(cliente.getNome());
		System.out.println("carregando");
		System.out.println(cliente.getSenha());
		String sqlSelect = "SELECT * FROM cliente WHERE cpf = ? and senha = ?";
		
		// usando o try with resources do Java 7, que fecha o que abriu
		try (Connection conn = ConnectionFactory.obtemConexao();
				PreparedStatement stm = conn.prepareStatement(sqlSelect);) {
			stm.setString(1, cliente.getCpf());
			stm.setString(2, cliente.getSenha());
			try (ResultSet rs = stm.executeQuery();) {
				if (rs.next()) {
					System.out.println("carregado");
					cliente.setCidade(rs.getString("cidade"));					
					cliente.setTelefone(rs.getString("telefone"));
					cliente.setEmail(rs.getString("email"));
					cliente.setNome(rs.getString("nome"));		
					cliente.setRg(rs.getString("rg"));		
					cliente.setEndereco(rs.getString("endereco"));		
					System.out.println(cliente.getRg());
				} 
			} catch (SQLException e) {
				e.printStackTrace();
			}
		} catch (SQLException e1) {
			System.out.print(e1.getStackTrace());
		}
		return cliente;
		
	}
	
	
	public Cliente carregarSenha(Cliente cliente) {
		String sqlSelect = "SELECT senha FROM cliente WHERE email = ?";
		System.out.println(cliente.getEmail());
		// usando o try with resources do Java 7, que fecha o que abriu
		try (Connection conn = ConnectionFactory.obtemConexao();
				PreparedStatement stm = conn.prepareStatement(sqlSelect);) {
			 stm.setString(1, cliente.getEmail());
			 System.out.println("try");
			 System.out.println(cliente.getEmail());
			try (ResultSet rs = stm.executeQuery();) {
				if (rs.next()) {
					System.out.println(rs.getString("senha"));
					cliente.setSenha(rs.getString("senha"));						
				} 
			} catch (SQLException e) {
				e.printStackTrace();
				System.out.println("error try inside");
			}
		} catch (SQLException e1) {
			System.out.print(e1.getStackTrace());
			System.out.println("error try back");
		}
		return cliente;
	}
	
}
