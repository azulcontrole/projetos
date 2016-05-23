package br.com.azulcontrole.persistencia.entidade;

public class PrestacaoServico {
	    private Integer idPrestacaoServico;
	    private Integer idPessoa;
	    private String  prestacaoServico;
		public Integer getIdPrestacaoServico() {
			return idPrestacaoServico;
		}
		public void setIdPrestacaoServico(Integer idPrestacaoServico) {
			this.idPrestacaoServico = idPrestacaoServico;
		}
		public Integer getIdPessoa() {
			return idPessoa;
		}
		public void setIdPessoa(Integer idPessoa) {
			this.idPessoa = idPessoa;
		}
		public String getPrestacaoServico() {
			return prestacaoServico;
		}
		public void setPrestacaoServico(String prestacaoServico) {
			this.prestacaoServico = prestacaoServico;
		}
	    

}
