package br.com.azulcontrole.persistencia.entidade;

public class Grupo {
	  private Integer idGrupo;
	  private Integer codGrupo;
	  private Integer idEmpresa;
	  private String  descricaoGrupo;
	  private String  status;//'0= ativo, 1= inativo.',
	public Integer getIdGrupo() {
		return idGrupo;
	}
	public void setIdGrupo(Integer idGrupo) {
		this.idGrupo = idGrupo;
	}
	public Integer getCodGrupo() {
		return codGrupo;
	}
	public void setCodGrupo(Integer codGrupo) {
		this.codGrupo = codGrupo;
	}
	public Integer getIdEmpresa() {
		return idEmpresa;
	}
	public void setIdEmpresa(Integer idEmpresa) {
		this.idEmpresa = idEmpresa;
	}
	public String getDescricaoGrupo() {
		return descricaoGrupo;
	}
	public void setDescricaoGrupo(String descricaoGrupo) {
		this.descricaoGrupo = descricaoGrupo;
	}
	public String getStatus() {
		return status;
	}
	public void setStatus(String status) {
		this.status = status;
	}

	
}
