package br.com.azulcontrole.persistencia.entidade;

public class CentroCusto {
		private Integer idCentroCusto;
		private Integer idEmpresa;
		private String  codCentro;
		private String  descricao;
		private Integer sintetico;
	    private String  status;//0 = ativo, 1 = inativo',
	    
		public Integer getIdCentroCusto() {
			return idCentroCusto;
		}
		public void setIdCentroCusto(Integer idCentroCusto) {
			this.idCentroCusto = idCentroCusto;
		}
		public Integer getIdEmpresa() {
			return idEmpresa;
		}
		public void setIdEmpresa(Integer idEmpresa) {
			this.idEmpresa = idEmpresa;
		}
		public String getCodCentro() {
			return codCentro;
		}
		public void setCodCentro(String codCentro) {
			this.codCentro = codCentro;
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
