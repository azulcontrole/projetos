package br.com.azulcontrole.persistencia.entidade;

public class Estoque {
	    private Integer idEstoque;
		private Integer idReferencia;
		private Integer idLocal;
		private double  quantEntrEstoque;
		private double  quantSaidaEstoque;
		private String  dataCompraEstoque;
	    private String  dataSaidaEstoque;
	    private double  valorCompraEstoque;
	    private double  valorVendaEstoque;
	    private double  margemEstoque;
		private String  dataRegistro;
		private String  dataAlteracao;
		private String  status;//'0 = ativo, 1 = inativo',
		public Integer getIdEstoque() {
			return idEstoque;
		}
		public void setIdEstoque(Integer idEstoque) {
			this.idEstoque = idEstoque;
		}
		public Integer getIdReferencia() {
			return idReferencia;
		}
		public void setIdReferencia(Integer idReferencia) {
			this.idReferencia = idReferencia;
		}
		public Integer getIdLocal() {
			return idLocal;
		}
		public void setIdLocal(Integer idLocal) {
			this.idLocal = idLocal;
		}
		public double getQuantEntrEstoque() {
			return quantEntrEstoque;
		}
		public void setQuantEntrEstoque(double quantEntrEstoque) {
			this.quantEntrEstoque = quantEntrEstoque;
		}
		public double getQuantSaidaEstoque() {
			return quantSaidaEstoque;
		}
		public void setQuantSaidaEstoque(double quantSaidaEstoque) {
			this.quantSaidaEstoque = quantSaidaEstoque;
		}
		public String getDataCompraEstoque() {
			return dataCompraEstoque;
		}
		public void setDataCompraEstoque(String dataCompraEstoque) {
			this.dataCompraEstoque = dataCompraEstoque;
		}
		public String getDataSaidaEstoque() {
			return dataSaidaEstoque;
		}
		public void setDataSaidaEstoque(String dataSaidaEstoque) {
			this.dataSaidaEstoque = dataSaidaEstoque;
		}
		public double getValorCompraEstoque() {
			return valorCompraEstoque;
		}
		public void setValorCompraEstoque(double valorCompraEstoque) {
			this.valorCompraEstoque = valorCompraEstoque;
		}
		public double getValorVendaEstoque() {
			return valorVendaEstoque;
		}
		public void setValorVendaEstoque(double valorVendaEstoque) {
			this.valorVendaEstoque = valorVendaEstoque;
		}
		public double getMargemEstoque() {
			return margemEstoque;
		}
		public void setMargemEstoque(double margemEstoque) {
			this.margemEstoque = margemEstoque;
		}
		public String getDataRegistro() {
			return dataRegistro;
		}
		public void setDataRegistro(String dataRegistro) {
			this.dataRegistro = dataRegistro;
		}
		public String getDataAlteracao() {
			return dataAlteracao;
		}
		public void setDataAlteracao(String dataAlteracao) {
			this.dataAlteracao = dataAlteracao;
		}
		public String getStatus() {
			return status;
		}
		public void setStatus(String status) {
			this.status = status;
		}

}
