package br.com.azulcontrole.persistencia.entidade;

public class Pessoa {
	    private Integer idPessoa;
	    private Integer idEmpresa;
	    private String  cnpjCpf;
	    private String  nome;
	    private String  nomeFantasia;
	    private Integer idAtividades;
	    private Integer tpPessoa;
	    private String  dtCriacao;
	    private Integer classificacaoPessoa;//'1 - Juridica , 2 - Fisica',
	    private String  dtAlteracao;
	    private String  dataInicio;
	    private String  status;//'0 - ativo\n1 - inativo',
		public Integer getIdPessoa() {
			return idPessoa;
		}
		public void setIdPessoa(Integer idPessoa) {
			this.idPessoa = idPessoa;
		}
		public Integer getIdEmpresa() {
			return idEmpresa;
		}
		public void setIdEmpresa(Integer idEmpresa) {
			this.idEmpresa = idEmpresa;
		}
		public String getCnpjCpf() {
			return cnpjCpf;
		}
		public void setCnpjCpf(String cnpjCpf) {
			this.cnpjCpf = cnpjCpf;
		}
		public String getNome() {
			return nome;
		}
		public void setNome(String nome) {
			this.nome = nome;
		}
		public String getNomeFantasia() {
			return nomeFantasia;
		}
		public void setNomeFantasia(String nomeFantasia) {
			this.nomeFantasia = nomeFantasia;
		}
		public Integer getIdAtividades() {
			return idAtividades;
		}
		public void setIdAtividades(Integer idAtividades) {
			this.idAtividades = idAtividades;
		}
		public Integer getTpPessoa() {
			return tpPessoa;
		}
		public void setTpPessoa(Integer tpPessoa) {
			this.tpPessoa = tpPessoa;
		}
		public String getDtCriacao() {
			return dtCriacao;
		}
		public void setDtCriacao(String dtCriacao) {
			this.dtCriacao = dtCriacao;
		}
		public Integer getClassificacaoPessoa() {
			return classificacaoPessoa;
		}
		public void setClassificacaoPessoa(Integer classificacaoPessoa) {
			this.classificacaoPessoa = classificacaoPessoa;
		}
		public String getDtAlteracao() {
			return dtAlteracao;
		}
		public void setDtAlteracao(String dtAlteracao) {
			this.dtAlteracao = dtAlteracao;
		}
		public String getDataInicio() {
			return dataInicio;
		}
		public void setDataInicio(String dataInicio) {
			this.dataInicio = dataInicio;
		}
		public String getStatus() {
			return status;
		}
		public void setStatus(String status) {
			this.status = status;
		}

	    
}
