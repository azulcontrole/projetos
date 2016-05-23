package br.com.azulcontrole.persistencia.entidade;

public class Cor {
        private Integer idCor;
        private String  descricao;
        private String  status;//'0=ativo,1=inativo,3=Indefinido',
		public Integer getIdCor() {
			return idCor;
		}
		public void setIdCor(Integer idCor) {
			this.idCor = idCor;
		}
		public String getDescricao() {
			return descricao;
		}
		public void setDescricao(String descricao) {
			this.descricao = descricao;
		}
		public String getStatus() {
			return status;
		}
		public void setStatus(String status) {
			this.status = status;
		}

        
       
  
}
