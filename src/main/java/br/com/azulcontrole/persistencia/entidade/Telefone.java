package br.com.azulcontrole.persistencia.entidade;

public class Telefone {
	    private Integer idTelefone;
	    private Integer idPessoa;
	    private String  numeroTelefone;
	    private String  tipoTelefone;//'1=fixo resid,2=celular,3=fixo coml.',
		public Integer getIdTelefone() {
			return idTelefone;
		}
		public void setIdTelefone(Integer idTelefone) {
			this.idTelefone = idTelefone;
		}
		public Integer getIdPessoa() {
			return idPessoa;
		}
		public void setIdPessoa(Integer idPessoa) {
			this.idPessoa = idPessoa;
		}
		public String getNumeroTelefone() {
			return numeroTelefone;
		}
		public void setNumeroTelefone(String numeroTelefone) {
			this.numeroTelefone = numeroTelefone;
		}
		public String getTipoTelefone() {
			return tipoTelefone;
		}
		public void setTipoTelefone(String tipoTelefone) {
			this.tipoTelefone = tipoTelefone;
		}

	  
	  
	  
}
