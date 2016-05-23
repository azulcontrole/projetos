package br.com.azulcontrole.persistencia.entidade;

public class Atividades {
		private Integer idAtividades;
		private Integer codigo;
        private String  nome;
		private String  ativo; //'1 = ativo, 2 inavito',
		
		public Integer getIdAtividades() {
			return idAtividades;
		}
		public void setIdAtividades(Integer idAtividades) {
			this.idAtividades = idAtividades;
		}
		public Integer getCodigo() {
			return codigo;
		}
		public void setCodigo(Integer codigo) {
			this.codigo = codigo;
		}
		public String getNome() {
			return nome;
		}
		public void setNome(String nome) {
			this.nome = nome;
		}
		public String getAtivo() {
			return ativo;
		}
		public void setAtivo(String ativo) {
			this.ativo = ativo;
		}
		
}
