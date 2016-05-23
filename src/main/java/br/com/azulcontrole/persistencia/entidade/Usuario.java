package br.com.azulcontrole.persistencia.entidade;

import java.util.Date;

public class Usuario {
	private Integer opt;
	private Integer id;
	private String  name;
	private String  login;
	private String  senha;
	private String  dataCadastro;
	private Date    dataAlterado;	
	
	public Integer getOpt() {
		return opt;
	}
	public void setOpt(Integer opt) {
		this.opt = opt;
	}
	public String getDataCadastro() {
		return dataCadastro;
	}
	public void setDataCadastro(String dataCadastro) {
		this.dataCadastro = dataCadastro;
	}
	
	public Date getDataAlterado() {
		return dataAlterado;
	}
	public void setDataAlterado(Date dataAlterado) {
		this.dataAlterado = dataAlterado;
	}
	
	public Integer getId() {
		return id;
	}
	public void setId(Integer id) {
		this.id = id;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getLogin() {
		return login;
	}
	public void setLogin(String login) {
		this.login = login;
	}
	public String getSenha() {
		return senha;
	}
	public void setSenha(String senha) {
		this.senha = senha;
	}
	@Override
	public String toString() {
		return "Usuario [opt=" + opt + ", id=" + id + ", name=" + name + ", login=" + login + ", senha=" + senha
				+ ", dataCadastro=" + dataCadastro + ", dataAlterado=" + dataAlterado + "]";
	}

}
