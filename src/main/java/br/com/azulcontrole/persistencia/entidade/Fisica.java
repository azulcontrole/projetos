package br.com.azulcontrole.persistencia.entidade;

public class Fisica {
	    private Integer idFisica;
	    private Integer idPessoa;
	    private String  rgFisica;
	    private String  orgaoRgFisica;
	    private String  nascimentoFisica;
	    private Integer ecivilFisica;//'1=solteiro(a),2=casado(a),3=eparado(a),4=divorciado(a),5=viuvo(a)\n',
	    private Integer sexoFisica;//'1=maculino, 2 = feminino',
	    private String  profissaoFisica;
	    private double  rendaFisica;
	    private String  cadastroFisica;
	    private String  alteradoFisica;
		public Integer getIdFisica() {
			return idFisica;
		}
		public void setIdFisica(Integer idFisica) {
			this.idFisica = idFisica;
		}
		public Integer getIdPessoa() {
			return idPessoa;
		}
		public void setIdPessoa(Integer idPessoa) {
			this.idPessoa = idPessoa;
		}
		public String getRgFisica() {
			return rgFisica;
		}
		public void setRgFisica(String rgFisica) {
			this.rgFisica = rgFisica;
		}
		public String getOrgaoRgFisica() {
			return orgaoRgFisica;
		}
		public void setOrgaoRgFisica(String orgaoRgFisica) {
			this.orgaoRgFisica = orgaoRgFisica;
		}
		public String getNascimentoFisica() {
			return nascimentoFisica;
		}
		public void setNascimentoFisica(String nascimentoFisica) {
			this.nascimentoFisica = nascimentoFisica;
		}
		public Integer getEcivilFisica() {
			return ecivilFisica;
		}
		public void setEcivilFisica(Integer ecivilFisica) {
			this.ecivilFisica = ecivilFisica;
		}
		public Integer getSexoFisica() {
			return sexoFisica;
		}
		public void setSexoFisica(Integer sexoFisica) {
			this.sexoFisica = sexoFisica;
		}
		public String getProfissaoFisica() {
			return profissaoFisica;
		}
		public void setProfissaoFisica(String profissaoFisica) {
			this.profissaoFisica = profissaoFisica;
		}
		public double getRendaFisica() {
			return rendaFisica;
		}
		public void setRendaFisica(double rendaFisica) {
			this.rendaFisica = rendaFisica;
		}
		public String getCadastroFisica() {
			return cadastroFisica;
		}
		public void setCadastroFisica(String cadastroFisica) {
			this.cadastroFisica = cadastroFisica;
		}
		public String getAlteradoFisica() {
			return alteradoFisica;
		}
		public void setAlteradoFisica(String alteradoFisica) {
			this.alteradoFisica = alteradoFisica;
		}

	    
}
