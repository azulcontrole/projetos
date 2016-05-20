package br.com.azulcontrole.persistencia.entidade;

public class Atividades {
		private Integer id_atividades;
		private Integer codigo;
        private String nome;
		private String ativo; //'1 = ativo, 2 inavito',
		
		public Integer getId_atividades() {
			return id_atividades;
		}
		public void setId_atividades(Integer id_atividades) {
			this.id_atividades = id_atividades;
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
