package br.com.azulcontrole.persistencia.entidade;

public class CategoriaAtributo {
		private Integer id_categoria;
	    private Integer id_empresa;
		private String descricao;
		public Integer getId_categoria() {
			return id_categoria;
		}
		public void setId_categoria(Integer id_categoria) {
			this.id_categoria = id_categoria;
		}
		public Integer getId_empresa() {
			return id_empresa;
		}
		public void setId_empresa(Integer id_empresa) {
			this.id_empresa = id_empresa;
		}
		public String getDescricao() {
			return descricao;
		}
		public void setDescricao(String descricao) {
			this.descricao = descricao;
		}


}
