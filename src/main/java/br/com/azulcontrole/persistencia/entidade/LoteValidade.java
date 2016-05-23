package br.com.azulcontrole.persistencia.entidade;

public class LoteValidade {
	  private Integer idLote;
	  private Integer idEstoque;
	  private String  numeroLote;
	  private String  dataLote;
	  private String  dataValidade;
	  
	public Integer getIdLote() {
		return idLote;
	}
	public void setIdLote(Integer idLote) {
		this.idLote = idLote;
	}
	public Integer getIdEstoque() {
		return idEstoque;
	}
	public void setIdEstoque(Integer idEstoque) {
		this.idEstoque = idEstoque;
	}
	public String getNumeroLote() {
		return numeroLote;
	}
	public void setNumeroLote(String numeroLote) {
		this.numeroLote = numeroLote;
	}
	public String getDataLote() {
		return dataLote;
	}
	public void setDataLote(String dataLote) {
		this.dataLote = dataLote;
	}
	public String getDataValidade() {
		return dataValidade;
	}
	public void setDataValidade(String dataValidade) {
		this.dataValidade = dataValidade;
	}

	  
}
