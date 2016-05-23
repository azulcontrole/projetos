package br.com.azulcontrole.persistencia.entidade;

public class SubGrupo {
	    private Integer idSubGrupo;
	    private Integer idGrupo;
	    private Integer codSubGrupo;
	    private String  descricaoSubGrupo;
	    private String  status;//'0 = ativo, 1 = inativo',
		public Integer getIdSubGrupo() {
			return idSubGrupo;
		}
		public void setIdSubGrupo(Integer idSubGrupo) {
			this.idSubGrupo = idSubGrupo;
		}
		public Integer getIdGrupo() {
			return idGrupo;
		}
		public void setIdGrupo(Integer idGrupo) {
			this.idGrupo = idGrupo;
		}
		public Integer getCodSubGrupo() {
			return codSubGrupo;
		}
		public void setCodSubGrupo(Integer codSubGrupo) {
			this.codSubGrupo = codSubGrupo;
		}
		public String getDescricaoSubGrupo() {
			return descricaoSubGrupo;
		}
		public void setDescricaoSubGrupo(String descricaoSubGrupo) {
			this.descricaoSubGrupo = descricaoSubGrupo;
		}
		public String getStatus() {
			return status;
		}
		public void setStatus(String status) {
			this.status = status;
		}

	    
}
