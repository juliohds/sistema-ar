package model;

import java.util.ArrayList;
import java.util.Date;

public class Voo {
	
	private int id;
	private int numero;
	private int fileiras;
	private int poltronasPorFileira;
	private double precoPorTrecho;
	private String origem;
	private String destino;
	private Date dataPartida;
	private Date horaPartida;
	private Date dataChegadaPrevista;
	private Date horaChegadaPrevista;
	private ArrayList<Passagem> passagens;
	
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public int getNumero() {
		return numero;
	}
	public void setNumero(int numero) {
		this.numero = numero;
	}
	public int getFileiras() {
		return fileiras;
	}
	public void setFileiras(int fileiras) {
		this.fileiras = fileiras;
	}
	public int getPoltronasPorFileira() {
		return poltronasPorFileira;
	}
	public void setPoltronasPorFileira(int poltronasPorFileira) {
		this.poltronasPorFileira = poltronasPorFileira;
	}
	public double getPrecoPorTrecho() {
		return precoPorTrecho;
	}
	public void setPrecoPorTrecho(double precoPorTrecho) {
		this.precoPorTrecho = precoPorTrecho;
	}
	public String getOrigem() {
		return origem;
	}
	public void setOrigem(String origem) {
		this.origem = origem;
	}
	public String getDestino() {
		return destino;
	}
	public void setDestino(String destino) {
		this.destino = destino;
	}
	public Date getDataPartida() {
		return dataPartida;
	}
	public void setDataPartida(Date dataPartida) {
		this.dataPartida = dataPartida;
	}
	public Date getHoraPartida() {
		return horaPartida;
	}
	public void setHoraPartida(Date horaPartida) {
		this.horaPartida = horaPartida;
	}
	public Date getDataChegadaPrevista() {
		return dataChegadaPrevista;
	}
	public void setDataChegadaPrevista(Date dataChegadaPrevista) {
		this.dataChegadaPrevista = dataChegadaPrevista;
	}
	public Date getHoraChegadaPrevista() {
		return horaChegadaPrevista;
	}
	public void setHoraChegadaPrevista(Date horaChegadaPrevista) {
		this.horaChegadaPrevista = horaChegadaPrevista;
	}
	public ArrayList<Passagem> getPassagens() {
		return passagens;
	}
	public void setPassagens(ArrayList<Passagem> passagens) {
		this.passagens = passagens;
	}
	
	
	
}
