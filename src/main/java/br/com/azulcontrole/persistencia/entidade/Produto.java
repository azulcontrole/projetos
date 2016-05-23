package br.com.azulcontrole.persistencia.entidade;

public class Produto {
	    private Integer idProduto;
	    private Integer idSubgrupo;
	    private Integer idNcm;
	    private Integer idPessoa;//'Fabricante',
	    private String  descricaoProduto;
	    private String  cadastroProduto;
	    private String  alteradoProduto;
	    private String  status;//'0 = ativo, 1 = inativo',
		public Integer getIdProduto() {
			return idProduto;
		}
		public void setIdProduto(Integer idProduto) {
			this.idProduto = idProduto;
		}
		public Integer getIdSubgrupo() {
			return idSubgrupo;
		}
		public void setIdSubgrupo(Integer idSubgrupo) {
			this.idSubgrupo = idSubgrupo;
		}
		public Integer getIdNcm() {
			return idNcm;
		}
		public void setIdNcm(Integer idNcm) {
			this.idNcm = idNcm;
		}
		public Integer getIdPessoa() {
			return idPessoa;
		}
		public void setIdPessoa(Integer idPessoa) {
			this.idPessoa = idPessoa;
		}
		public String getDescricaoProduto() {
			return descricaoProduto;
		}
		public void setDescricaoProduto(String descricaoProduto) {
			this.descricaoProduto = descricaoProduto;
		}
		public String getCadastroProduto() {
			return cadastroProduto;
		}
		public void setCadastroProduto(String cadastroProduto) {
			this.cadastroProduto = cadastroProduto;
		}
		public String getAlteradoProduto() {
			return alteradoProduto;
		}
		public void setAlteradoProduto(String alteradoProduto) {
			this.alteradoProduto = alteradoProduto;
		}
		public String getStatus() {
			return status;
		}
		public void setStatus(String status) {
			this.status = status;
		}

	    
}
