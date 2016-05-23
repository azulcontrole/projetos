package br.com.azulcontrole.persistencia.entidade;

public class PlanoConta {
	    private Integer idPlanoConta;
	    private Integer idEmpresa;
	    private String  codPlanoConta;
	    private String  descricaoPlanoConta;
	    private Integer status;
	    private Integer sintetico;
		public Integer getIdPlanoConta() {
			return idPlanoConta;
		}
		public void setIdPlanoConta(Integer idPlanoConta) {
			this.idPlanoConta = idPlanoConta;
		}
		public Integer getIdEmpresa() {
			return idEmpresa;
		}
		public void setIdEmpresa(Integer idEmpresa) {
			this.idEmpresa = idEmpresa;
		}
		public String getCodPlanoConta() {
			return codPlanoConta;
		}
		public void setCodPlanoConta(String codPlanoConta) {
			this.codPlanoConta = codPlanoConta;
		}
		public String getDescricaoPlanoConta() {
			return descricaoPlanoConta;
		}
		public void setDescricaoPlanoConta(String descricaoPlanoConta) {
			this.descricaoPlanoConta = descricaoPlanoConta;
		}
		public Integer getStatus() {
			return status;
		}
		public void setStatus(Integer status) {
			this.status = status;
		}
		public Integer getSintetico() {
			return sintetico;
		}
		public void setSintetico(Integer sintetico) {
			this.sintetico = sintetico;
		}

	    
}
