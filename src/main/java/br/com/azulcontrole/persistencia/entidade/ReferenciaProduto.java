package br.com.azulcontrole.persistencia.entidade;

public class ReferenciaProduto {
	    private Integer idReferencia;
	    private Integer idProduto;
	    private Integer idEmpresa;
	    private String  codEan;
	    private String  foto;
	    private double  quantMinima;
	    private String  idValorAtributos;
	    private String  status;//'0 = ativo, 1 = inativo',
		public Integer getIdReferencia() {
			return idReferencia;
		}
		public void setIdReferencia(Integer idReferencia) {
			this.idReferencia = idReferencia;
		}
		public Integer getIdProduto() {
			return idProduto;
		}
		public void setIdProduto(Integer idProduto) {
			this.idProduto = idProduto;
		}
		public Integer getIdEmpresa() {
			return idEmpresa;
		}
		public void setIdEmpresa(Integer idEmpresa) {
			this.idEmpresa = idEmpresa;
		}
		public String getCodEan() {
			return codEan;
		}
		public void setCodEan(String codEan) {
			this.codEan = codEan;
		}
		public String getFoto() {
			return foto;
		}
		public void setFoto(String foto) {
			this.foto = foto;
		}
		public double getQuantMinima() {
			return quantMinima;
		}
		public void setQuantMinima(double quantMinima) {
			this.quantMinima = quantMinima;
		}
		public String getIdValorAtributos() {
			return idValorAtributos;
		}
		public void setIdValorAtributos(String idValorAtributos) {
			this.idValorAtributos = idValorAtributos;
		}
		public String getStatus() {
			return status;
		}
		public void setStatus(String status) {
			this.status = status;
		}

	    
}
