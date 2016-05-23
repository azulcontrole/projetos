package br.com.azulcontrole.persistencia.entidade;

public class ReferenciaFisica {
	    private Integer idReferencia;
	    private Integer idPessoa;
	    private String  nomeReferenciaFisica;
	    private String  cnpjCpfReferencia;
	    private Integer tipoReferencia;//'1 = Comercial, 2 = Local Trabalho, 3 = Parente, 4 = Outros',
	    private String  enderecoReferencia;
	    private String  cidadeReferencia;
	    private String  ufReferencia;
		public Integer getIdReferencia() {
			return idReferencia;
		}
		public void setIdReferencia(Integer idReferencia) {
			this.idReferencia = idReferencia;
		}
		public Integer getIdPessoa() {
			return idPessoa;
		}
		public void setIdPessoa(Integer idPessoa) {
			this.idPessoa = idPessoa;
		}
		public String getNomeReferenciaFisica() {
			return nomeReferenciaFisica;
		}
		public void setNomeReferenciaFisica(String nomeReferenciaFisica) {
			this.nomeReferenciaFisica = nomeReferenciaFisica;
		}
		public String getCnpjCpfReferencia() {
			return cnpjCpfReferencia;
		}
		public void setCnpjCpfReferencia(String cnpjCpfReferencia) {
			this.cnpjCpfReferencia = cnpjCpfReferencia;
		}
		public Integer getTipoReferencia() {
			return tipoReferencia;
		}
		public void setTipoReferencia(Integer tipoReferencia) {
			this.tipoReferencia = tipoReferencia;
		}
		public String getEnderecoReferencia() {
			return enderecoReferencia;
		}
		public void setEnderecoReferencia(String enderecoReferencia) {
			this.enderecoReferencia = enderecoReferencia;
		}
		public String getCidadeReferencia() {
			return cidadeReferencia;
		}
		public void setCidadeReferencia(String cidadeReferencia) {
			this.cidadeReferencia = cidadeReferencia;
		}
		public String getUfReferencia() {
			return ufReferencia;
		}
		public void setUfReferencia(String ufReferencia) {
			this.ufReferencia = ufReferencia;
		}

	    
}
