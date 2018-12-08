package model;

public class Passagem {
	
	private int id;
	private int fileira;
	private char poltrona;
	private String formaPagamento;
	private int parcelasPagamento;
	private Cliente cliente;
	private int vooId;
	private Voo voo;
	
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public int getFileira() {
		return fileira;
	}
	public void setFileira(int fileira) {
		this.fileira = fileira;
	}
	public char getPoltrona() {
		return poltrona;
	}
	public void setPoltrona(char poltrona) {
		this.poltrona = poltrona;
	}
	public String getFormaPagamento() {
		return formaPagamento;
	}
	public void setFormaPagamento(String formaPagamento) {
		this.formaPagamento = formaPagamento;
	}
	public int getParcelasPagamento() {
		return parcelasPagamento;
	}
	public void setParcelasPagamento(int parcelasPagamento) {
		this.parcelasPagamento = parcelasPagamento;
	}
	public Cliente getCliente() {
		return cliente;
	}
	public void setCliente(Cliente cliente) {
		this.cliente = cliente;
	}
	public int getVooId() {
		return vooId;
	}
	public void setVooId(int vooId) {
		this.vooId = vooId;
	}
	public Voo getVoo() {
		return voo;
	}
	public void setVoo(Voo voo) {
		this.voo = voo;
	}
	
	
}
