package br.com.alura.gerenciador.servlet;

import java.util.Date;

/**
 *  Main object class, contains its GET and SET attributes and methods.
 **/
public class Empresa {
	
	private String nome;
	private String email;
	private String senha;
	private Integer id;
	private Date dataAbertura;
	
	//GET and SET methods
	
	public Date getDataAbertura() {
		return dataAbertura;
	}

	public void setDataAbertura(Date dataDaAbertura) {
		this.dataAbertura = dataDaAbertura;
	}

	public String getNome() {
		return nome;
	}

	public void setNome(String nome) {
		this.nome = nome;
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public String getSenha() {
		return senha;
	}

	public void setSenha(String senha) {
		this.senha = senha;
	}

	public Integer getId() {
		return id;
	}

	public void setId(Integer id) {
		this.id = id;
	}
}
