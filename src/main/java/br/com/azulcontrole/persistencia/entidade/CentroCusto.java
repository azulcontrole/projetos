package br.com.azulcontrole.persistencia.entidade;

public class CentroCusto {
		private Integer id_centro_custo;
		private Integer id_empresa;
		private String cod_centro;
		private String descricao;
		private Integer sintetico;
	    private String status;//0 = ativo, 1 = inativo',
		public Integer getId_centro_custo() {
			return id_centro_custo;
		}
		public void setId_centro_custo(Integer id_centro_custo) {
			this.id_centro_custo = id_centro_custo;
		}
		public Integer getId_empresa() {
			return id_empresa;
		}
		public void setId_empresa(Integer id_empresa) {
			this.id_empresa = id_empresa;
		}
		public String getCod_centro() {
			return cod_centro;
		}
		public void setCod_centro(String cod_centro) {
			this.cod_centro = cod_centro;
		}
		public String getDescricao() {
			return descricao;
		}
		public void setDescricao(String descricao) {
			this.descricao = descricao;
		}
		public Integer getSintetico() {
			return sintetico;
		}
		public void setSintetico(Integer sintetico) {
			this.sintetico = sintetico;
		}
		public String getStatus() {
			return status;
		}
		public void setStatus(String status) {
			this.status = status;
		}

	    
	    
}
