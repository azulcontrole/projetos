package br.com.azulcontrole.persistencia.entidade;

public class Endereco {
	private Integer idEndereco;
	private Integer idPessoa;
	private String  logradouroEndereco;
	private String  complementoEndereco;
	private String  numeroEndereco;
	private String  cepEndereco;
	private String  bairroEndereco;
	private String  cidadeEndereco;
	private String  ufEndereco;
	private Integer tipoEndereco;//'1 = Residencial, 2 = Comercial, 3 = Outros',
	public Integer getIdEndereco() {
		return idEndereco;
	}
	public void setIdEndereco(Integer idEndereco) {
		this.idEndereco = idEndereco;
	}
	public Integer getIdPessoa() {
		return idPessoa;
	}
	public void setIdPessoa(Integer idPessoa) {
		this.idPessoa = idPessoa;
	}
	public String getLogradouroEndereco() {
		return logradouroEndereco;
	}
	public void setLogradouroEndereco(String logradouroEndereco) {
		this.logradouroEndereco = logradouroEndereco;
	}
	public String getComplementoEndereco() {
		return complementoEndereco;
	}
	public void setComplementoEndereco(String complementoEndereco) {
		this.complementoEndereco = complementoEndereco;
	}
	public String getNumeroEndereco() {
		return numeroEndereco;
	}
	public void setNumeroEndereco(String numeroEndereco) {
		this.numeroEndereco = numeroEndereco;
	}
	public String getCepEndereco() {
		return cepEndereco;
	}
	public void setCepEndereco(String cepEndereco) {
		this.cepEndereco = cepEndereco;
	}
	public String getBairroEndereco() {
		return bairroEndereco;
	}
	public void setBairroEndereco(String bairroEndereco) {
		this.bairroEndereco = bairroEndereco;
	}
	public String getCidadeEndereco() {
		return cidadeEndereco;
	}
	public void setCidadeEndereco(String cidadeEndereco) {
		this.cidadeEndereco = cidadeEndereco;
	}
	public String getUfEndereco() {
		return ufEndereco;
	}
	public void setUfEndereco(String ufEndereco) {
		this.ufEndereco = ufEndereco;
	}
	public Integer getTipoEndereco() {
		return tipoEndereco;
	}
	public void setTipoEndereco(Integer tipoEndereco) {
		this.tipoEndereco = tipoEndereco;
	}

	
}
